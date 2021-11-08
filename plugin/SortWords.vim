command -range SortWords call setline('.', join(sort(split(getline('.'), ' ')), " ")) 

