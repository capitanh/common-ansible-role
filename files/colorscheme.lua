return {
{
  "navarasu/onedark.nvim",
  opts = function()
    return {
      style = 'darker',
      code_style = {
        comments = 'italic',
      },
    }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  }
}
