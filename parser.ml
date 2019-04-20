
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAL of (
# 9 "parser.mly"
       (int)
# 11 "parser.ml"
  )
    | TRS_NAME of (
# 8 "parser.mly"
       (string)
# 16 "parser.ml"
  )
    | TRS
    | TKN_NAME of (
# 8 "parser.mly"
       (string)
# 22 "parser.ml"
  )
    | TEST
    | R_SRC
    | R_PRN
    | R_OPR
    | PLS
    | PLC_NAME of (
# 8 "parser.mly"
       (string)
# 32 "parser.ml"
  )
    | OR_END
    | OR
    | OBS
    | NAME of (
# 8 "parser.mly"
       (string)
# 40 "parser.ml"
  )
    | MLT
    | L_SRC
    | L_PRN
    | L_OPR
    | INT of (
# 9 "parser.mly"
       (int)
# 49 "parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState64
  | MenhirState63
  | MenhirState57
  | MenhirState55
  | MenhirState47
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState34
  | MenhirState29
  | MenhirState27
  | MenhirState23
  | MenhirState21
  | MenhirState18
  | MenhirState15
  | MenhirState14
  | MenhirState13
  | MenhirState10
  | MenhirState6
  | MenhirState3
  | MenhirState2

# 1 "parser.mly"
  
open Env

# 107 "parser.ml"

let rec _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ply -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | L_PRN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | VAL _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run29 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ply -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | L_PRN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | VAL _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_goto_ply : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ply -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MLT ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | R_PRN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_ply)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ply = 
# 65 "parser.mly"
                    ()
# 167 "parser.ml"
             in
            _menhir_goto_ply _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * _menhir_state * 'tv_ply)) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MLT ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | END_EXT | END_FKC | END_FRK | FKC | FRK | INT _ | L_PRN | OBS | OR | OR_END | PLS | R_PRN | TRS | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_ply)) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_ply)), _, (_3 : 'tv_ply)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ply = 
# 63 "parser.mly"
                ()
# 193 "parser.ml"
             in
            _menhir_goto_ply _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * 'tv_ply)) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * 'tv_ply)) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * 'tv_ply)) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_ply)), _, (_3 : 'tv_ply)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ply = 
# 64 "parser.mly"
                ()
# 213 "parser.ml"
         in
        _menhir_goto_ply _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state * 'tv_ply_list) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MLT ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack)
        | PLS ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack)
        | END_EXT | END_FKC | END_FRK | FKC | FRK | INT _ | L_PRN | OBS | OR | OR_END | TRS | VAL _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_ply_list) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_ply_list)), _, (_2 : 'tv_ply)) = _menhir_stack in
            let _v : 'tv_ply_list = 
# 58 "parser.mly"
                 ( )
# 233 "parser.ml"
             in
            _menhir_goto_ply_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv275 * _menhir_state * 'tv_ply_list) * _menhir_state * 'tv_ply) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | _ ->
        _menhir_fail ()

and _menhir_goto_childs : _menhir_env -> 'ttv_tail -> 'tv_childs -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv253 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END_FKC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | DOT | NAME _ ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv248)
    | FKC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * 'tv_childs) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CYC ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | DOT | NAME _ ->
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv250)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)

and _menhir_goto_frk : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_frk -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv245) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_frk) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_frk) : 'tv_frk) = _v in
    ((let _v : 'tv_code = 
# 39 "parser.mly"
        ()
# 303 "parser.ml"
     in
    _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (int)
# 310 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 9 "parser.mly"
       (int)
# 320 "parser.ml"
    )) : (
# 9 "parser.mly"
       (int)
# 324 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ply = 
# 61 "parser.mly"
         ()
# 329 "parser.ml"
     in
    _menhir_goto_ply _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | L_PRN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | VAL _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (int)
# 353 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 9 "parser.mly"
       (int)
# 363 "parser.ml"
    )) : (
# 9 "parser.mly"
       (int)
# 367 "parser.ml"
    )) = _v in
    ((let _v : 'tv_ply = 
# 62 "parser.mly"
        ()
# 372 "parser.ml"
     in
    _menhir_goto_ply _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)

and _menhir_goto_frk_tail : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_frk_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv225 * _menhir_state) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_frk_tail)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_frk = 
# 68 "parser.mly"
                      ()
# 390 "parser.ml"
         in
        _menhir_goto_frk _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227) = Obj.magic _menhir_stack in
        ((let _v : 'tv_childs = 
# 72 "parser.mly"
    ()
# 401 "parser.ml"
         in
        _menhir_goto_childs _menhir_env _menhir_stack _v) : 'freshtv228)) : 'freshtv230)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * 'tv_childs)) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * 'tv_childs)) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, (_1 : 'tv_childs)), _, (_3 : 'tv_frk_tail)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_childs = 
# 73 "parser.mly"
                         ()
# 414 "parser.ml"
         in
        _menhir_goto_childs _menhir_env _menhir_stack _v) : 'freshtv232)) : 'freshtv234)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv237 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs)) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv235 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs)) * _menhir_state * 'tv_frk_tail) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (_2 : 'tv_frk_tail)), (_3 : 'tv_childs)), _, (_5 : 'tv_frk_tail)) = _menhir_stack in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_frk = 
# 69 "parser.mly"
                                          ()
# 428 "parser.ml"
         in
        _menhir_goto_frk _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)) : 'freshtv238)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ply_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ply_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_ply_list) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | L_PRN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | VAL _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | END_EXT | END_FKC | END_FRK | FKC | FRK | OBS | OR | OR_END | TRS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_ply_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ply_list)) = _menhir_stack in
        let _v : 'tv_trs = 
# 29 "parser.mly"
              (  )
# 455 "parser.ml"
         in
        _menhir_goto_trs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv222)

and _menhir_goto_trs : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_trs -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * (
# 8 "parser.mly"
       (string)
# 472 "parser.ml"
        ))) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv203 * _menhir_state) * (
# 8 "parser.mly"
       (string)
# 478 "parser.ml"
        ))) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (_2 : (
# 8 "parser.mly"
       (string)
# 483 "parser.ml"
        ))), _, (_4 : 'tv_trs)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_frk_tail = 
# 77 "parser.mly"
                       ()
# 490 "parser.ml"
         in
        _menhir_goto_frk_tail _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv207 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_FRK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FRK ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | OBS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | END_EXT | END_FKC | FKC | OR | OR_END | TRS ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv208)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv217) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv215) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _, (_2 : 'tv_names)), _, (_4 : 'tv_names)), _, (_6 : 'tv_trs_name)), _, (_7 : 'tv_trs)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_cnc_trs = 
# 54 "parser.mly"
                                           ( SmplStrNet.Trs {src=_2;dst=_4} )
# 523 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213) = _menhir_stack in
        let (_v : 'tv_cnc_trs) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_std_seq) = Obj.magic _menhir_stack in
        let (_v : 'tv_cnc_trs) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_std_seq) = Obj.magic _menhir_stack in
        let ((_2 : 'tv_cnc_trs) : 'tv_cnc_trs) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_std_seq)) = _menhir_stack in
        let _v : 'tv_std_seq = 
# 51 "parser.mly"
                    ()
# 538 "parser.ml"
         in
        _menhir_goto_std_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)
    | _ ->
        _menhir_fail ()

and _menhir_goto_code : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_code -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv163 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_code) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv161 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_5 : 'tv_code) : 'tv_code) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_names)), _, (_3 : 'tv_trs_name)), _, (_4 : 'tv_trs)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_frk_tail = 
# 76 "parser.mly"
                                ()
# 561 "parser.ml"
         in
        _menhir_goto_frk_tail _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)) : 'freshtv164)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv173 * _menhir_state) * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_code) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv171 * _menhir_state) * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_5 : 'tv_code) : 'tv_code) = _v in
        ((let (((_menhir_stack, _menhir_s), (_2 : 'tv_obs_list)), _, (_4 : 'tv_obs_head)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_obs = 
# 79 "parser.mly"
                                      ()
# 579 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_obs) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_obs) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_obs) : 'tv_obs) = _v in
        ((let _v : 'tv_code = 
# 40 "parser.mly"
        ()
# 596 "parser.ml"
         in
        _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_code) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_code) : 'tv_code) = _v in
        ((let ((_menhir_stack, (_1 : 'tv_obs_list)), _, (_3 : 'tv_obs_head)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_obs_list = 
# 83 "parser.mly"
                              ()
# 613 "parser.ml"
         in
        _menhir_goto_obs_list _menhir_env _menhir_stack _v) : 'freshtv176)) : 'freshtv178)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_code) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_code) : 'tv_code) = _v in
        ((let _v : 'tv_net = 
# 35 "parser.mly"
         ( )
# 628 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_net) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv195 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 639 "parser.ml"
        ))) * _menhir_state * 'tv_net) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_EXT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv191 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 649 "parser.ml"
            ))) * _menhir_state * 'tv_net) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv189 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 656 "parser.ml"
            ))) * _menhir_state * 'tv_net) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _, (_2 : 'tv_names)), _, (_4 : 'tv_names)), (_6 : (
# 8 "parser.mly"
       (string)
# 661 "parser.ml"
            ))), _, (_8 : 'tv_net)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 671 "parser.ml"
            ) = 
# 32 "parser.mly"
                                                     ( Trs {src=_2;dst=_4} )
# 675 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 683 "parser.ml"
            )) = _v in
            ((match _menhir_s with
            | MenhirState37 | MenhirState47 | MenhirState18 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 693 "parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 701 "parser.ml"
                )) : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 705 "parser.ml"
                )) = _v in
                ((let _v : 'tv_trs = 
# 27 "parser.mly"
        (  )
# 710 "parser.ml"
                 in
                _menhir_goto_trs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
            | MenhirState2 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv185 * 'tv_ext_list) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 720 "parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv183 * 'tv_ext_list) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((_2 : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 728 "parser.ml"
                )) : (
# 16 "parser.mly"
      (string SmplStrNet.exp)
# 732 "parser.ml"
                )) = _v in
                ((let (_menhir_stack, (_1 : 'tv_ext_list)) = _menhir_stack in
                let _v : 'tv_ext_list = 
# 24 "parser.mly"
                 ( _1@[_2] )
# 738 "parser.ml"
                 in
                _menhir_goto_ext_list _menhir_env _menhir_stack _v) : 'freshtv184)) : 'freshtv186)
            | _ ->
                _menhir_fail ()) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv193 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 750 "parser.ml"
            ))) * _menhir_state * 'tv_net) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)) : 'freshtv198)) : 'freshtv200)) : 'freshtv202)
    | _ ->
        _menhir_fail ()

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_ply_list = 
# 57 "parser.mly"
    (  )
# 762 "parser.ml"
     in
    _menhir_goto_ply_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 769 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 8 "parser.mly"
       (string)
# 779 "parser.ml"
    )) : (
# 8 "parser.mly"
       (string)
# 783 "parser.ml"
    )) = _v in
    ((let _v : 'tv_trs = 
# 28 "parser.mly"
              (  )
# 788 "parser.ml"
     in
    _menhir_goto_trs _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_goto_trs_name : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_trs_name -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TRS_NAME _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | END_EXT | END_FKC | END_FRK | FKC | FRK | INT _ | L_PRN | OBS | OR | OR_END | TRS | VAL _ ->
            _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv156)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv157) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXT ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TRS_NAME _v ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | END_EXT | END_FKC | FKC | INT _ | L_PRN | OR | OR_END | TRS | VAL _ ->
            _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv158)
    | _ ->
        _menhir_fail ()

and _menhir_goto_std_seq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_std_seq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_std_seq) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TRS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv148)
    | END_EXT | END_FKC | FKC | OR | OR_END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_std_seq) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_std_seq)) = _menhir_stack in
        let _v : 'tv_code = 
# 38 "parser.mly"
            ()
# 851 "parser.ml"
         in
        _menhir_goto_code _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_std_seq) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)

and _menhir_goto_obs_list : _menhir_env -> 'ttv_tail -> 'tv_obs_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv145 * _menhir_state) * 'tv_obs_list) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * 'tv_obs_list) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv140)
    | OR_END ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv141 * _menhir_state) * 'tv_obs_list) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state) * 'tv_obs_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NAME _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "parser.mly"
       (string)
# 900 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_OPR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv131 * _menhir_state) * (
# 8 "parser.mly"
       (string)
# 911 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXT ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | TRS_NAME _v ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | END_EXT | END_FKC | FKC | INT _ | L_PRN | OR | OR_END | VAL _ ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv133 * _menhir_state) * (
# 8 "parser.mly"
       (string)
# 933 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_obs_head : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_obs_head -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv127 * _menhir_state) * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_FRK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | FRK ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | OBS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | END_EXT | END_FKC | FKC | OR | OR_END | TRS ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv128)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END_FRK ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | FRK ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | OBS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | OR | OR_END | TRS ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState64
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv130)
    | _ ->
        _menhir_fail ()

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_trs_name = 
# 47 "parser.mly"
    ()
# 998 "parser.ml"
     in
    _menhir_goto_trs_name _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (string)
# 1005 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | L_OPR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 1017 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 1024 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : (
# 8 "parser.mly"
       (string)
# 1029 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_trs_name = 
# 48 "parser.mly"
                (  )
# 1035 "parser.ml"
         in
        _menhir_goto_trs_name _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * (
# 8 "parser.mly"
       (string)
# 1045 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_std_seq = 
# 50 "parser.mly"
    ()
# 1055 "parser.ml"
     in
    _menhir_goto_std_seq _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
    ((let _v : 'tv_obs_list = 
# 82 "parser.mly"
      ()
# 1068 "parser.ml"
     in
    _menhir_goto_obs_list _menhir_env _menhir_stack _v) : 'freshtv120)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | DOT | NAME _ ->
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CYC ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | DOT | NAME _ ->
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run5 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_names -> (
# 8 "parser.mly"
       (string)
# 1105 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
    let ((_2 : (
# 8 "parser.mly"
       (string)
# 1114 "parser.ml"
    )) : (
# 8 "parser.mly"
       (string)
# 1118 "parser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_names)) = _menhir_stack in
    let _v : 'tv_names = 
# 44 "parser.mly"
                ( Hashtbl.add _1 {name=_2;cyc=0};_1 )
# 1124 "parser.ml"
     in
    _menhir_goto_names _menhir_env _menhir_stack _menhir_s _v) : 'freshtv118)

and _menhir_goto_names : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_names -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv65 * _menhir_state) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv66)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv67 * _menhir_state) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv79 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NAME _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv75 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
                let (_v : (
# 8 "parser.mly"
       (string)
# 1170 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | L_OPR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv71 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 1181 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | END_FRK ->
                        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | FRK ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | OBS ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | END_EXT | TRS ->
                        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv72)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv73 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 1205 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv77 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)) : 'freshtv80)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv81 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)
    | MenhirState57 | MenhirState55 | MenhirState39 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NAME _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
            | END_EXT | END_FKC | END_FRK | EXT | FKC | FRK | INT _ | L_PRN | OBS | OR | OR_END | TRS | TRS_NAME _ | VAL _ ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv86)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)) : 'freshtv90)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | L_SRC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv91) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv92)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv93) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)) : 'freshtv96)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv101) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv97) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NAME _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
            | END_EXT | END_FKC | EXT | FKC | INT _ | L_PRN | OR | OR_END | TRS | TRS_NAME _ | VAL _ ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv98)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv99) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)) : 'freshtv102)
    | MenhirState63 | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv109 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TRS_NAME _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
                let (_v : (
# 8 "parser.mly"
       (string)
# 1321 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
                let ((_3 : (
# 8 "parser.mly"
       (string)
# 1329 "parser.ml"
                )) : (
# 8 "parser.mly"
       (string)
# 1333 "parser.ml"
                )) = _v in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_names)) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_obs_head = 
# 86 "parser.mly"
                       ()
# 1340 "parser.ml"
                 in
                _menhir_goto_obs_head _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)) : 'freshtv106)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)) : 'freshtv110)
        | NAME _v ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) _v
        | END_EXT | END_FKC | END_FRK | FKC | FRK | OBS | OR | OR_END | TRS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv111 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_names)) = _menhir_stack in
            let _v : 'tv_obs_head = 
# 87 "parser.mly"
          (  )
# 1359 "parser.ml"
             in
            _menhir_goto_obs_head _menhir_env _menhir_stack _menhir_s _v) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_names) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | _ ->
        _menhir_fail ()

and _menhir_reduce14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_names = 
# 43 "parser.mly"
    ( Hashtbl.create 20 )
# 1377 "parser.ml"
     in
    _menhir_goto_names _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv17 * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * 'tv_obs_list)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv20)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state) * _menhir_state * 'tv_frk_tail) * 'tv_childs)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * 'tv_childs)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv24)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv25) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv27) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv29) * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv32)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) * _menhir_state * 'tv_trs) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state * 'tv_names)) * _menhir_state * 'tv_trs_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_ply)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_ply)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_ply_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * (
# 8 "parser.mly"
       (string)
# 1466 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * _menhir_state) * 'tv_obs_list)) * _menhir_state * 'tv_obs_head) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * 'tv_obs_list)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv57 * _menhir_state) * _menhir_state * 'tv_names)) * _menhir_state * 'tv_names)) * (
# 8 "parser.mly"
       (string)
# 1490 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state) * _menhir_state * 'tv_names)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * 'tv_ext_list) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv64)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_goto_ext_list : _menhir_env -> 'ttv_tail -> 'tv_ext_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15 * 'tv_ext_list) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13 * 'tv_ext_list) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState2 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * 'tv_ext_list) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, (_1 : 'tv_ext_list)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1535 "parser.ml"
        ) = 
# 20 "parser.mly"
                 ( _1 )
# 1539 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = _menhir_stack in
        let (_v : (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1546 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_v : (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1553 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let ((_1 : (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1560 "parser.ml"
        )) : (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1564 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
    | EXT ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv16)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and text : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 17 "parser.mly"
      (string SmplStrNet.exp list)
# 1589 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
    ((let _v : 'tv_ext_list = 
# 23 "parser.mly"
    ( [] )
# 1611 "parser.ml"
     in
    _menhir_goto_ext_list _menhir_env _menhir_stack _v) : 'freshtv2)) : 'freshtv4))

# 233 "/home/kohe/.opam/system/lib/menhir/standard.mly"
  

# 1618 "parser.ml"
