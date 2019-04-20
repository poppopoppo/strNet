
(* The type of tokens. *)

type token = 
  | VAL of (int)
  | TRS_NAME of (string)
  | TRS
  | TKN_NAME of (string)
  | TEST
  | R_SRC
  | R_PRN
  | R_OPR
  | PLS
  | PLC_NAME of (string)
  | OR_END
  | OR
  | OBS
  | NAME of (string)
  | MLT
  | L_SRC
  | L_PRN
  | L_OPR
  | INT of (int)
  | FRK
  | FKC
  | EXT
  | EOF
  | END_FRK
  | END_FKC
  | END_EXT
  | END
  | DOT
  | CYC
  | CLN

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val text: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (string SmplStrNet.exp list)
