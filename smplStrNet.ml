type 'x plc = {
  name: 'x;
  cyc:int
}
type 'x trs = {
  src : ('x plc,unit) Hashtbl.t;
  dst : ('x plc,unit) Hashtbl.t;
}
type 'x tkn = ('x plc,unit) Hashtbl.t
type 'x net = {
  trs_set : ('x trs) list;
  cur_tkn : 'x tkn
}
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
let rec evo (n:'x net) : 'x net =
  let (trs,tkn) = (n.trs_set,n.cur_tkn) in
  let rec evo_i v l =
    match l with
    | [] -> v
    | hd::tl ->
      let v' =
        try fire v hd
        with | Fire -> v
             | err -> raise err in
      evo_i v' tl in
  { trs_set=trs; cur_tkn=evo_i tkn trs }
type 'x exp =
  | Plc of 'x plc
  | Trs of 'x trs
  | Tkn of 'x tkn
  | Net of 'x net
  | Other of string
