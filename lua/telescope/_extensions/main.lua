local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local actions = require("telescope.actions")
local actions_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local onedark = require("onedark")

local style_switcher = function(opts)
  local set_style = function()
    local selection = actions_state.get_selected_entry()[1]

    onedark.setup({
      style = (selection == "light") and "dark" or selection
    })
    vim.o.background = (selection == "light") and "light" or "dark"
    vim.cmd("colorscheme onedark")
  end

  local next_item = function(bufnr)
    actions.move_selection_next(bufnr)
    set_style()
  end

  local prev_item = function(bufnr)
    actions.move_selection_previous(bufnr)
    set_style()
  end

  opts = opts or {}
  pickers.new(opts, {
    finder = finders.new_table({
      results = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }
    }),
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(bufnr, map)
      actions.select_default:replace(function()
        actions.close(bufnr)
        set_style()
      end)

      map("i", "<C-j>", next_item)
      map("i", "<C-k>", prev_item)
      map("i", "<C-n>", next_item)
      map("i", "<C-p>", prev_item)

      return true
    end
  }):find()
end

return style_switcher
