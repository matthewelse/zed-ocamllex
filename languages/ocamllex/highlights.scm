; Allow OCaml highlighter
(ocaml) @none

; Regular expressions
(regexp_name) @variable

[
  (eof)
  (any)
] @constant

([(string) (character)]) @string

(escape_sequence) @string.escape

(character_set
  "^" @punctuation.special)

(character_range
  "-" @punctuation.delimiter)

(regexp_difference
  "#" @operator)

(regexp_repetition
  [
    "?"
    "*"
    "+"
  ] @operator)

(regexp_alternative
  "|" @operator)

; Rules
(lexer_entry_name) @function

(lexer_argument) @variable.parameter

(lexer_entry
  [
    "="
    "|"
  ] @punctuation.delimiter)

; keywords
[
  "and"
  "as"
  "let"
  "parse"
  "refill"
  "rule"
  "shortest"
] @keyword

; Punctuation
[
  "["
  "]"
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

; Misc
(comment) @comment @spell
