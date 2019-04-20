%{
open Env
%}

%token L_SRC R_SRC TRS R_OPR L_OPR
%token OR CYC FKC FRK OBS TEST END CLN
%token L_PRN R_PRN DOT EXT END_FRK END_FKC END_EXT OR_END
%token <string> NAME PLC_NAME TKN_NAME TRS_NAME
%token <int> INT VAL
%token PLS MLT
%token EOF

%left PLS
%left MLT
%start text
%type <string SmplStrNet.exp> ext
%type <string SmplStrNet.exp list> text
%%
text:
  | ext_list EOF { $1 }
  ;
ext_list:
  | { [] }
  | ext_list ext { $1@[$2] }
  ;
trs:
  | ext {  }
  | TRS_NAME  {  }
  | ply_list  {  }
  ;
ext:
  | EXT names L_SRC names DOT NAME L_OPR net END_EXT { Trs {src=$2;dst=$4} }
  ;
net:
  | code { }
  ;
code:
  | std_seq {}
  | frk {}
  | obs {}
  ;
names:
  | { Hashtbl.create 20 }
  | names NAME  { Hashtbl.add $1 {name=$2;cyc=0};$1 }
  ;
trs_name:
  | {}
  | NAME L_OPR  {  }
std_seq:
  | {}
  | std_seq cnc_trs {}
  ;
cnc_trs:
  | TRS names L_SRC names DOT trs_name trs { SmplStrNet.Trs {src=$2;dst=$4} }
  ;
ply_list:
  | {  }
  | ply_list ply { }
  ;
ply:
  | VAL  {}
  | INT {}
  | ply PLS ply {}
  | ply MLT ply {}
  | L_PRN ply R_PRN {}
  ;
frk:
  | END_FRK frk_tail  {}
  | FRK frk_tail childs END_FKC frk_tail  {}
  ;
childs:
  | {}
  | childs FKC frk_tail  {}
  ;
frk_tail:
  | names DOT trs_name trs code {}
  | CYC NAME L_OPR trs {}
obs:
  | OBS obs_list OR_END obs_head code {}
  ;
obs_list:
  |   {}
  | obs_list OR obs_head code {}
  ;
obs_head:
  | names DOT TRS_NAME {}
  | names {  }
  ;
