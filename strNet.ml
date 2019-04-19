
module NameMap = Map.Make(String)
module IntMap = Map.Make(struct type t = int let compare = compare end)
type name_set = unit NameMap.t
type int_set = unit IntMap.t
type name = string

type t = {
  mutable proc_n : int;
  trs_set : trs NameMap.t;
  mutable itm_set : itms
  }
and trs =
  | Ply of {
    src : name_set;
    dst_f : vlu NameMap.t;
    }
  | Frk of {
      src : name_set;
      dst_f : (vlu NameMap.t) list ;
    }
  | Obs of {
      cnd : name;
      src : name_set;
      dst_f : (vlu NameMap.t) list ;
    }
and itms = (itms_key,vlu) Hashtbl.t
and itms_key = {
  prc : int;
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
let consume itms p s =
  let f k () (itms,binds) =
    let x = Hashtbl.find itms { prc=p; pos=k} in
    let _ = Hashtbl.remove itms { prc=p; pos=k} in
    (itms,NameMap.add k x binds) in
  let (itms',s') = NameMap.fold f s (itms,NameMap.empty) in
  (itms',s')
let operate n t p =
  match t with
  | Ply t ->
    let ((itms',s),dst_f) = (consume n.itm_set p t.src,t.dst_f) in
    let fld k v hsh =
      Hashtbl.add hsh { prc=p;pos=k } v; hsh in
    let dst_f' = NameMap.fold fld s itms' in
    dst_f'
  | Frk t ->
    let pn = n.proc_n in
    of {
      src : name_set;
      dst_f : (vlu NameMap.t) list ;
    }
  | Obs of {
      cnd : name;
      src : name_set;
      dst_f : (vlu NameMap.t) list ;
    }
  | _ -> itms
let fire n tn p =
  let t = NameMap.find tn n.trs_set in
  let _ = operate n t p in
  n

let rec evo_p n p =
  let _ = NameMap.mapi (fun k t -> fire n k p) n.trs_set in
  if p=0 then n else evo_p n (p-1);
  n
let evo n =
  evo_p n n.proc_n
