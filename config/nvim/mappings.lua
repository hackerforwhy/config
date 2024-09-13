require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--

map("n", "<leader>q", "<cmd>q<CR>", { desc = "General Quit #退出" })





--
-- telescope
map("n", "<leader>k", "<cmd>Telescope keymaps<CR>", { desc = "Telescope keymaps #telescope键位图" })



---translation---

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line #移动行首" })
map("i", "<C-e>", "<End>", { desc = "move end of line #移动行尾" })
map("i", "<C-h>", "<Left>", { desc = "move left #移动左" })
map("i", "<C-l>", "<Right>", { desc = "move right #移动右" })
map("i", "<C-j>", "<Down>", { desc = "move down #移动下" })
map("i", "<C-k>", "<Up>", { desc = "move up #移动上" })


map("n", "<C-h>", "<C-w>h", { desc = "switch window left #切换窗口左" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right #切换窗口右" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down #切换窗口下" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up #切换窗口上" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights #清除高亮" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "General Save file #保存文件" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General Copy whole file #复制整个文件" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number  #切换行号" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number  #切换相对行号" })
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle nvcheatsheet #切换nvcheatsheet" })

map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "General Format file #格式化文件" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP Diagnostic loclist #LSP诊断loclist" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new #新建缓冲区" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next #缓冲区转到下一个" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev #缓冲区转到上一个" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close #关闭缓冲区" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Toggle Comment   #切换注释", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment    #切换注释", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window   #切换nvimtree窗口" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window #聚焦nvimtree窗口" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep    #telescope实时搜索" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers   #telescope查找缓冲区" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page    #telescope帮助页面" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks    #telescope查找书签" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles #telescope查找旧文件" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer    #telescope在当前缓冲区中查找" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits    #telescope git 提交" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status     #telescope git 状态" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term #telescope选择隐藏终端" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes    #telescope nvchad主题" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files     #telescope查找文件" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files    #telescope查找所有文件" }
)

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode    #终端模式退出" })

-- new terminals
map("n", "<leader>h", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term #终端新水平窗口" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal new vertical window  #终端新垂直窗口" })

-- toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term    #终端可切换垂直窗口" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term #终端可切换水平窗口" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term    #终端可切换浮动窗口" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps #whichkey所有键位" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup    #whichkey查询查找" })

-- blankline
map("n", "<leader>cc", function()
  local config = { scope = {} }
  config.scope.exclude = { language = {}, node_type = {} }
  config.scope.include = { node_type = {} }
  local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

  if node then
    local start_row, _, end_row, _ = node:range()
    if start_row ~= end_row then
      vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
      vim.api.nvim_feedkeys("_", "n", true)
    end
  end
end, { desc = "blankline jump to current context    #blankline跳转到当前上下文" })
