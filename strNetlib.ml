open SmplStrNet
let file_to_net f =
  let f = open_in f in
  let b = Lexing.from_channel f in
  let r = Parser.text Lexer.token b in
  close_in f
