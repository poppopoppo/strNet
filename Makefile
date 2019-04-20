


SmplStrNetlib: smplStrNet.ml parser.mly lexer.mll strNetlib.ml Makefile
	ocamlc -c smplStrNet.ml
	ocamllex lexer.mll
	menhir --explain parser.mly
	ocamlc -c parser.mli
	ocamlc -c lexer.ml
	ocamlc -c parser.ml
	dune build smplStrNet.cmo
