syn match texInputFile "\\subfile\s*\(\[.*\]\)\={.\{-}}"
     \ contains=texStatement,texInputCurlies,texInputFileOpt
