local map = vim.keymap.set
local group = vim.api.nvim_create_augroup("keymap", {})
local options = { noremap = true }

-- disable
map("n", "<Space>", "<NOP>", silent)

-- fzf
map("n", "<C-p>", ":lua require('fzf-lua').files({ cmd = 'rg --files --follow --no-ignore-vcs --hidden -g \"!{**/node_modules/*,**/.git/*,**/.yarn/*,**/dist/*}\"' })<CR>", silent)
map("n", "<leader>gf", ":lua require('fzf-lua').git_files()<CR>", silent)
map("n", "<leader>lg", ":lua require('fzf-lua').live_grep({ cmd = 'rg --hidden --no-ignore' })<CR>", options)
map("n", "<leader>b", ":lua require('fzf-lua').buffers()<CR>", options)
map("n", "<leader>of", ":lua require('fzf-lua').oldfiles()<CR>", options)

map("i", "<C-j>", "<Plug>(copilot-next)", silent)
map("i", "<C-j>", "<Plug>(copilot-previous)", silent)
map("i", "<C-\\>", "<Plug>(copilot-dismiss)", silent)

map("n", "<leader>m", ":Mason<CR>", silent)
map("n", "<leader>fm", ":ZenMode<CR>", silent)

-- pick window
map("n", "<leader>p", function()
  local winpick = require("winpick")
  local winid = winpick.select()

  if winid then
    vim.api.nvim_set_current_win(winid)
  end
end, silent)

map("n", "<leader>ra", ":Sad<CR>", silent)

-- overseer
map("n", "<leader>ot", ":OverseerToggle<CR>", silent)
map("n", "<leader>or", ":OverseerRun<CR>", silent)
map("n", "<leader>od", ":OverseerLoadBundle dev<CR>", silent)

-- git
map("n", "<leader>gbo", ":GitBlameOpenCommitURL<CR>", silent)
map("n", "<leader>gbc", ":GitBlameCopySHA<CR>", silent)
map("n", "<leader>gg", ":LazyGit<CR>", silent)

-- history
map("n", "<leader>e", ":NvimTreeToggle<CR>", silent)
map("n", "<leader>uu", ":UndotreeToggle<CR>", silent)
map("n", "<leader>dff", ":DiffviewOpen<CR>", silent)
map("n", "<leader>dfq", ":DiffviewClose<CR>", silent)

-- save files
map("n", "<leader>s", ":lua vim.lsp.buf.format()<CR> <bar> :wa<CR>", silent)
map("n", "<leader>S", ":lua vim.lsp.buf.format()<CR> <bar> :wqa!<CR>", silent)

-- move lines with move.nvim using Alt + hjkl
map("n", "<A-j>", ":MoveLine(1)<CR>", silent)
map("n", "<A-k>", ":MoveLine(-1)<CR>", silent)
map("v", "<A-j>", ":MoveBlock(1)<CR>", silent)
map("v", "<A-k>", ":MoveBlock(-1)<CR>", silent)
map("n", "<A-l>", ":MoveHChar(1)<CR>", silent)
map("n", "<A-h>", ":MoveHChar(-1)<CR>", silent)
map("v", "<A-l>", ":Mov)eHBlock(1)<CR>", silent)
map("v", "<A-l>", ":MoveHBlock(-1)<CR>", silent)

-- easier indentation in visual mode
map("v", "<", "<gv", options)
map("v", ">", ">gv", options)

-- find and replace all
map("n", "S", ":%s//<Left>", silent)

-- remap split navigation to CTRL + hjkl
map("n", "<S-h>", ":wincmd h<CR>", silent)
map("n", "<S-j>", ":wincmd j<CR>", silent)
map("n", "<S-k>", ":wincmd k<CR>", silent)
map("n", "<S-l>", ":wincmd l<CR>", silent)

-- remap split manipulation to SHIFT + CTRL + hjkl
map("n", "<C-S-h>", ":wincmd H<CR>", silent)
map("n", "<C-S-j>", ":wincmd J<CR>", silent)
map("n", "<C-S-k>", ":wincmd K<CR>", silent)
map("n", "<C-S-l>", ":wincmd L<CR>", silent)

-- autoswitch to newly created split
map("n", "<C-W>v", ":vsplit<CR> <bar> :wincmd l<CR>", silent)
map("n", "<C-W>s", ":split<CR> <bar> :wincmd j<CR>", silent)

-- adjust split sizes with CTRL + arrows
map("n", "<C-Left>", ":vertical resize +3<CR>", silent)
map("n", "<C-Right>", ":vertical resize -3<CR>", silent)
map("n", "<C-Up>", ":resize -3<CR>", silent)
map("n", "<C-Down>", ":resize +3<CR>", silent)

-- tab controls
map("n", "th", ":tabfirst<CR>", options)
map("n", "tj", ":tabprev<CR>", options)
map("n", "tk", ":tabnext<CR>", options)
map("n", "tl", ":tablast<CR>", options)
map("n", "tt", ":tabedit<Space>", options)
map("n", "tm", ":tabm<Space>", options)
map("n", "<C-t>n", ":tabnew<CR>", silent)
map("n", "<C-t>d", ":tabclose<CR>", silent)

-- buffer controls
map("n", "<leader>z", ":bp <bar> :bd #<CR>", silent) -- close buffer but keep split
map("n", "-", ":b#<CR>", silent) --  previously active buffer

-- barbar buffer controls
map("n", "<leader>x", ":only <bar> :BufferCloseAllButCurrentOrPinned<CR>", silent) -- close all buffers except current
map("n", "<leader>P", ":BufferPin<CR>", silent) -- pin current buffer
map("n", "<C-h>", ":BufferPrevious<CR>", silent)
map("n", "<C-l>", ":BufferNext<CR>", silent)
map("n", "<C-A-h>", ":BufferMovePrevious<CR>", silent)
map("n", "<C-A-l>", ":BufferMoveNext<CR>", silent)
map("n", "<C-1>", ":BufferGoto 1<CR>", silent)
map("n", "<C-2>", ":BufferGoto 2<CR>", silent)
map("n", "<C-3>", ":BufferGoto 3<CR>", silent)
map("n", "<C-4>", ":BufferGoto 4<CR>", silent)
map("n", "<C-5>", ":BufferGoto 5<CR>", silent)
map("n", "<C-6>", ":BufferGoto 6<CR>", silent)
map("n", "<C-7>", ":BufferGoto 7<CR>", silent)
map("n", "<C-8>", ":BufferGoto 8<CR>", silent)
map("n", "<C-9>", ":BufferGoto 9<CR>", silent)

-- trouble toggling
map("n", "<leader>tx", ":Trouble<CR>", silent)
map("n", "<leader>tw", ":Trouble workspace_diagnostics<CR>", silent)
map("n", "<leader>td", ":Trouble document_diagnostics<CR>", silent)
map("n", "<leader>tt", ":TodoTrouble<CR>", silent)
map("n", "<leader>tl", ":Trouble loclist<CR>", silent)
map("n", "<leader>tq", ":Trouble quickfix<CR>", silent)
map("n", "<leader>tr", ":Trouble lsp_references<CR>", silent)
map("n", "<leader>tz", ":TroubleClose<CR>", silent)

-- hop bindings
map("n", "<leader>h", ":HopWord<CR>", silent)
map("n", "<leader>cl", ":HopWordCurrentLine<CR>", silent)
map("n", "<leader>lh", ":HopLineStart<CR>", silent)
map("n", "<leader>la", ":HopLineStartAC<CR>", silent)
map("n", "<leader>lb", ":HopLineStartBC<CR>", silent)
map("n", "<leader>vh", ":HopVertical<CR>", silent)
