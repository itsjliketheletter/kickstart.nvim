return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup()
    local function map(lhs, rhs, opts)
      opts = opts or {}
      opts.noremap = true
      opts.silent = true
      vim.keymap.set("n", lhs, rhs, opts)
    end

    -- Usage with description
    map("<leader>Ha", function() harpoon:list():append() end, { desc = "Append file to Harpoon" })
    map("<leader>Hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle Harpoon menu" })
    map("<c-h>", function() harpoon:list():select(1) end, { desc = "Switch to file 1" })
    map("<c-j>", function() harpoon:list():select(2) end, { desc = "Switch to file 2" })
    map("<c-k>", function() harpoon:list():select(3) end, { desc = "Switch to file 3" })
    map("<c-l>", function() harpoon:list():select(4) end, { desc = "Switch to file 4" })
  end
}
