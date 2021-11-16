return {
    'windwp/nvim-autopairs',
    config=function()
        require('nvim-autopairs').setup{}

        local Rule = require('nvim-autopairs.rule')
        local npairs = require('nvim-autopairs')

        local cond = require('nvim-autopairs.conds')
        npairs.add_rules{
          Rule('$', '$', 'tex')
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex_check("%%"))
            -- don't move right when repeat character
            -- :with_move(cond.none())
            ,
          Rule(',,', '``', 'tex'),
          Rule('`', "'", 'tex'),
          Rule('<<', ">>", 'tex'),
          }

          npairs.add_rules{
              Rule("[=[", ']=', 'lua'),
              Rule("[==[", ']==', 'lua')
          }

          -- Not working
          -- npairs.add_rules{
          --     Rule('“', '”'),
          --     Rule('‘' ,  '’'),
          --     Rule('„', '“'),
          --     Rule('«', '»'),
          -- }
      end
  }
