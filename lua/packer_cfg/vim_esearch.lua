return {
    'eugen0329/vim-esearch',
    config=function()
        vim.g.esearch={
            root_markers={},
            win_map = {
                {'n', 'yf',  '<CMD>call setreg(esearch#util#clipboard_reg(), b:esearch.filename())<cr>'},
                {'n', 't',   '<CMD>call b:esearch.open("NewTabdrop")<cr>'                         },
                {'n', '+',   '<CMD>call esearch#init(extend(b:esearch, AddAfter(+v:count1)))<cr>' },
                {'n', '-',   '<CMD>call esearch#init(extend(b:esearch, AddAfter(-v:count1)))<cr>' },
                {'n', 'gq',  '<CMD>call esearch#init(extend(copy(b:esearch), to_quickfix))<cr>'   },
                {'n', 'gsp', '<CMD>call esearch#init(extend(b:esearch, sort_by_path))<cr>'        },
                {'n', 'gsd', '<CMD>call esearch#init(extend(b:esearch, sort_by_date))<cr>'        },
            }
        }

    end
}
