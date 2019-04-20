%{
(* open Syntax *)
open Env
(*
type operators = ((int list) -> (int list)) State.t
let ax_ope = [
  "warp"  (* \ ??A->num,??A *);
  "intr"  (* ??A->??B,??A \ ??B *);
  "id"  (* ??A \ ??A *)
]
*)
%}

%token L_SRC R_SRC RCP L_PRN R_PRN R_OPR L_OPR PRN
%token OR CYC FOR FRK OBS CNC_L CNC_R TEST
%token <string> ITM OPER
%token <int> NUM VAL
%token PLS MLT
%token EOF

%left PLS
%left MLT
%left CNC_L CNC_R
%start buffer code program
%type <Env.command> buffer
%type <Env.command list> code
%type <unit> program

%%
code:
  | code_list EOF { $1 }
  ;
code_list:
  |  (* [$2] *) { [{src=[];dest=[];ope=[]}] }
  | code_list command { (* $2::$3 *) [{src=[];dest=[];ope=[]}]}
  ;
buffer:
  | command EOF { {src=[];dest=[];ope=[]} }
(*  | flow EOF { $1 } *)
  ;
program:
  | fork_tree EOF {}
  ;

fork_tree:
  | fork_tree OBS obs_head operate_list
  | fork_tree OR or_head operate_list
  | fork_tree FRK frk_head operate_list  {}
  | FRK frk_head operate_list  {}
  | fork_tree FOR for_head operate_list  {}
  ;
parent:
  | FRK operate_list fork_tree  {}
  | FRK operate_list  {}
  ;
child:
  | FOR operate_list fork_tree  {}
  ;

fork:
  | FRK proc forks  {}
  ;
forks:
  | {}
  | forks FOR proc  {}
  ;
proc:
  | proc_head prg_list {}
  ;
one_proc:
  | proc_head non_fork {}
  ;

proc_head:
  | signe R_OPR OPER  {}
  | items  {}
  | items R_OPR OPER  {}
  ;
prg_list:
  | {}
  | observe {}
  | fork {}
  | cycle {}
  | operate_list  {}
  ;
non_fork:
  | {}
  | observe {}
  | cycle {}
  | operate_list {}
  ;

observe:
  | OBS ITM obs_list {}
  ;
obs_list:
  |  {}
  | obs_list obs_head prg_list {}
  ;


cycle:
  | CYC proc_head {}
  ;
command:
  | RCP operate  {}
  | OBS command_observe  {}
  | command_fork  {}
  | CYC command_cycle  {}
  ;
operate_list:
  | {}
  | operate_list RCP operate {}
operate:  {}
  | items L_SRC R_OPR opes L_OPR items {}
  | items L_SRC R_OPR opes {}
  | items R_SRC ITM R_OPR opes {}
  | items L_SRC ITM items R_OPR opes {}
  | items R_SRC R_OPR opes L_OPR items {}
  | opes L_OPR signe {}
  | items R_OPR opes L_OPR L_SRC items {}
  | items R_OPR opes L_OPR R_SRC items {}
  ;

signe:
  | src_dst {}
  | dst_src {}
  ;
src_dst:
  | items L_SRC items {}
  ;
dst_src:
  | items R_SRC items {}
  ;
items:
  | { [] }
  | items ITM { ($1 @ [$2]) }
  ;
m_opes:
  | R_OPR opes L_OPR  {}
  ;
opes:
  | { }
  | opes ope_atom  {}
  ;
(*
  | src_dst { $1 }
  | dst_src { $1 }
  ;
  *)
  (*
    § o « s ⊢ d
    § o « d ⊣ s
    § d » o ⊣ s
    § s » o ⊢ d

    § s ⊢ d » o
    § s ⊢ o « d

    § d ⊣ s » o
    § d  ⊣ o « s
  *)
command_observe:
  | ITM cmd_obs_list  {}
  ;
cmd_obs_list:
  | {}
  | cmd_obs_list obs_head  {}
  ;
obs_head:
  | OR  {}
  | OR items R_OPR OPER  {}
  | OR items R_OPR OPER L_OPR items  {}
  ;
command_fork:
  | FRK proc_head fork_list  {}
  ;
fork_list:
  | {}
  | fork_list FOR proc_head  {}
  ;
command_cycle:
  | items R_OPR OPER  {}
  | items R_OPR OPER L_OPR  {}
  ;
ope_atom:
  | calc { Calc $1 }
  ;
calc:
  | PRN { Cst 0 }
  | calc CNC_L calc { Cst 0 }
  | calc CNC_R calc { Cst 0 }
  | L_PRN calc R_PRN  { $2 }
  | calc PLS calc { Plus ($1,$3) }
  | calc MLT calc  { Mult ($1,$3) }
  | VAL { Val $1 }
  | NUM { Cst $1 }

(*
flow_def:
  | FLOW RCP  TYPE flow
  ;
flow:
  | L_SRC TYPE R_OPR OPE_NAME
  | R_OPR OPE_NAME L_INGRE TYPE
  | flow_V
  | flow_H
  | flow_Vt
  ;
flow_V:
  | V_PROD TYPE R_OPR OPE_NAME flow_V
  | R_OPR OPE_NAME ISO TYPE
*)
