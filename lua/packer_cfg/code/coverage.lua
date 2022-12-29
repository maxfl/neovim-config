return {
  "andythigpen/nvim-coverage",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require "coverage".setup {
        lang = {
            python = {
                coverage_file = 'coverage.json'
            }
        }
    }
end
}
