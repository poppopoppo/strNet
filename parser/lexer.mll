{
    open Parser
    exception Error of string
}

let space = [' ' '\t' '\n' '\r']
let digit = ['0'-'9']
let alpha = ['a'-'z' 'A'-'Z']
let ascii = ['a'-'z' 'A'-'Z' '0'-'9' '(' ')' '!' '"' '#'
  '$' '%' '&' '\'' '=' '~' '~' '|' '{' '}' '`' '@' '[' ']'
  '*' '+' ';' ':' '<' '>' ',' '.' '?' '/' '\\' '_' ]
let alnum = digit | alpha

rule token = parse
    | "\194\167"  (* § *) { TRS }

    | "\194\187" (* » *)  { R_OPR          }
    | "\194\171" (* « *)  { L_OPR            }

  (*  ▸◂◀◀ ▶ »«  *)
    | "\226\138\163" (* ⊣ *) { R_SRC                                }
    | "\226\138\162" (* ⊢ *) { L_SRC             }
    | "FRK"   { FRK }
    | "OBS"   { OBS }
    | "CYC" { CYC }
    | "OR"  { OR }
    | "FKC" { FKC }
    | "TEST"  { TEST }
    | '(' { L_PRN }
    | ')' { R_PRN }
    | '.' { DOT }
    | ':' { CLN }
    | '>' { END }
    | "+" { PLS }
    | '*' { MLT }
    | "?" (digit+ as lxm) { VAL(int_of_string lxm) }
    | (('-' digit+)|digit+) as lxm  { INT (int_of_string lxm) }

    | space+        { token lexbuf                         }
    | eof           { EOF                                  }
    | _             { raise (Error (Printf.sprintf
                      "At offset %d: unexpected character.\n"
                      (Lexing.lexeme_start lexbuf))) }
