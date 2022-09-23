local keymap = vim.keymap

-- dont yank with x
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "gD", vim.lsp.buf.definition, { silent = true })

keymap.set("n", "<A-q>", "<CMD>bp<bar>sp<bar>bn<bar>bd<CR>")
