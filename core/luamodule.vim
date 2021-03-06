lua << EOF
require('themes.evilline')
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}
EOF

lua << EOF
require "nvim-treesitter.configs".setup {
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false -- Whether the query persists across vim sessions
  }
}
EOF

lua <<EOF
require('dap-python').setup('~/anaconda3/envs/pytorch/bin/python')
EOF
