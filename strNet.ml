module NameMap = Map.Make(String)
module IntMap = Map.Make(struct type t = int let compare = compare end)
type name_set = unit NameMap.t
type int_set = unit IntMap.t
type name = string

type t = {
  cyc_n : int;
  trs_set : trs NameMap.t;
  mutable itm_set : itms
}
and trs =
  | Ply of {
      src : name_set;
      cyc : bool;
      dst_f : vlu NameMap.t;
    }
  | Obs of {
      cnd : name;
      src : name_set;
      dst_f : (vlu NameMap.t) list ;
    }
and itms = (itms_key,vlu) Hashtbl.t
and itms_key = {
  cyc : int;
  pos : name
}
and vlu =
  | Unit
  | Int of int
  | Plc_In
  | Plc_Out
  | Rcd of (vlu list)
  | Ax of name
  | Itm of name
  | Plus of (vlu * vlu)
  | Mult of (vlu * vlu)
let consume itms c src_set =
  let f k () (itms,binds) =
    let x = Hashtbl.find itms { cyc=c; pos=k} in
    let _ = Hashtbl.remove itms { cyc=c; pos=k} in
    (itms,NameMap.add k x binds) in
  let (itms',binds) = NameMap.fold f src_set (itms,NameMap.empty) in
  (itms',binds)
let operate cy net trs =
  match trs with
  | Ply t ->
    let ((itms',s),dst_f) = (consume net.itm_set cy t.src,t.dst_f) in
    let cy' = if t.cyc then (net.cyc_n+1) else cy in
    let fld k v hsh =
      Hashtbl.add hsh { cyc=cy';pos=k } v; hsh in
    let dst_f' = NameMap.fold fld s itms' in
    net.itm_set <- dst_f'; net
  | _ -> net
let fire n tn cy =
  let t = NameMap.find tn n.trs_set in
  let _ = operate cy n t in
  n

let rec evo_c n c =
  let _ = NameMap.mapi (fun k t -> fire n k c) n.trs_set in
  if c=0 then n else evo_c n (c-1)
let evo n =
  let _ = evo_c n n.cyc_n in
  ()

module Exp = struct
  module Smpl = struct
    type 'x plc = {
      name: 'x;
      cyc:int
    }
    type 'x trs = {
      src : ('x plc,unit) Hashtbl.t;
      dst : ('x plc,unit) Hashtbl.t;
    }
    type 'x tkn = ('x plc,unit) Hashtbl.t
    type 'x net = ('x trs) list
    exception Fire
    let fire (v:'x tkn) (f:'x trs) : 'x tkn =
      let v_cp = Hashtbl.copy v in
      let _ = Hashtbl.iter
          (fun x () ->
             if Hashtbl.mem v_cp x
             then Hashtbl.remove v_cp x
             else raise @@ Fire) f.src in
      let _ = Hashtbl.iter
          (fun x () ->
             if Hashtbl.mem v_cp x
             then raise @@ Fire
             else Hashtbl.add v_cp x ()) f.dst in
      v_cp
    let rec evo (v:'x tkn) (n:'x net) : 'x tkn =
      match n with
      | [] -> v
      | hd::tl ->
        let v' =
          try fire v hd
          with | Fire -> v
               | err -> raise err in
        evo v' tl
    type 'x exp =
      | Plc of 'x plc
      | Trs of 'x trs
      | Tkn of 'x tkn
      | Net of 'x net
      | Other of string
  end

  type t =
    | Unit
    | Trs of exp_trs
    | Plc of unit
    | Tkn of unit
  and exp_trs =
    | Cst of trs
    | Inc of string
end
