setlocal makeprg=fish\ %
setlocal efm=%Efish:\ %m,%C%f\ (line\ %l):\ %m
",%C%p^
"

let b:endwise_addition = 'end'
let b:endwise_words = 'function,while,if,for,switch,begin'
let b:endwise_pattern = '^\s*\%(\%(function\|while\|if\|for\|switch\)\>\s\+.\+$\|begin\s*$\)' 
let b:endwise_syngroups = 'shFunctionKey'

