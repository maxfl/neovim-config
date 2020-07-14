syn match texInputFile "\\subfile\s*\(\[.*\]\)\={.\{-}}"
     \ contains=texStatement,texInputCurlies,texInputFileOpt

syn region texRefZone matchgroup=texStatement start="\\\(sub\|cleve\)ref{"	end="}\|%stopzone\>"	contains=@texRefGroup

setl formatoptions+=ro
