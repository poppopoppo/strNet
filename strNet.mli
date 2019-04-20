type name = string
type t
val fire : net:t -> ope_name:name -> proc_num:int -> t
val evo_p : net:t -> proc_num:int -> t
val evo : net:t -> t
