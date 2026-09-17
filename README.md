# The Dark Side of the Moon

![The Dark Side of the Moon preview](public/Dark_Side_of_the_Moon.png)

A Neovim colorscheme inspired by the palette of Pink Floyd's *The Dark Side of the Moon*, with dark and light variants.

## Requirements

- Neovim 0.8 or newer
- `termguicolors` enabled for the intended colors

## Installation

### lazy.nvim

```lua
{
  "ttusk/nvim.tdsotm",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.cmd.colorscheme("tdsotm")
  end,
}
```

### packer.nvim

```lua
use({
  "ttusk/nvim.tdsotm",
  config = function()
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.cmd.colorscheme("tdsotm")
  end,
})
```

### vim-plug

```vim
Plug 'ttusk/nvim.tdsotm'
```

Then select the theme in `init.lua`:

```lua
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd.colorscheme("tdsotm")
```

Plugin managers can install this repository directly; no build step is required.

## Variants

Use `vim.opt.background = "dark"` for the dark variant or `"light"` for the light variant before loading the colorscheme:

```lua
vim.opt.background = "light"
vim.cmd.colorscheme("tdsotm")
```

## License

The theme source code is available under the MIT License. The preview artwork in `public/` is retained for presentation and is not covered by that license; its underlying rights belong to its respective copyright holder. Pink Floyd and *The Dark Side of the Moon* are not affiliated with or endorsing this project.
