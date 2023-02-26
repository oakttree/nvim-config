local keymap = vim.keymap.set 
vim.g.mapleader = " "

-- abre explorer
keymap("n", "e", ":NvimTreeToggle<CR>")
--remember: q de quit works for everything

--trocar de "página" numa mesma buffer
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-k>", ":bprevious<CR>", opts)

--criar, mover e fechar tabs, buffers
keymap("n", "t", ":tabnew<CR>", opts)
keymap("n", "n", ":bnext<CR>", opts)
keymap("n", "c", ":bdelete!<CR>", opts)

--criar mover e fechar splits
keymap("n", ".", ":vnew<CR>", opts)
keymap("n", ",", ":new<CR>", opts) 

--window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--resize
keymap("n", "<C-w>", ":resize -2<CR>", opts)
keymap("n", "<C-s>", ":resize +2<CR>", opts)
keymap("n", "<C-a>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-d>", ":vertical resize +2<CR>", opts)

--salvar arquivo
keymap("n", "s", ":w<CR>", opts)

--ajuda na identação
keymap("v", "u", "<gv", opts)
keymap("v", "p", ">gv", opts)

-- move o texto pra cima e baixo
keymap("v", "i", ":m '>+1<CR>gv=gv")
keymap("v", "o", ":m '<-2<CR>gv=gv")
keymap("x", "<leader>p", [["_dP]])

-- start programms/files
keymap("n", "<F5>", ":silent !start %<CR>")
keymap('n', "<F6>", ":vsplit| terminal python %<CR>")

--enter visual mode + u = ctrl+z

keymap("n", "<ESC>", "i")
