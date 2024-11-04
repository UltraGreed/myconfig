--  explore command on space-pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allows to drag selection up and down with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps cursor in place during J C-d/u n/N
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- space-p pastes over selection without losing buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank with space to use system buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete without overwriting buffer
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- disables Q - Ex mode (what?)
vim.keymap.set("n", "Q", "<nop>")

-- disables ZZ - save and close
vim.keymap.set("n", "ZZ", "<nop>")

-- disables q: - vim command line history
vim.keymap.set("n", "q:", "<nop>")

-- disables q/ q? - vim search history
vim.keymap.set("n", "q/", "<nop>")
vim.keymap.set("n", "q?", "<nop>")

-- tmux call
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quickfix list
vim.keymap.set("n", "<C-m>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-i>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>m", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>i", "<cmd>lprev<CR>zz")

-- substitute on space-s
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- chmod +x on space-x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
