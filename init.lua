local M = {}

function M.setup()
  vim.api.nvim_create_user_command("CountBuffs",
    function()
      local ids = vim.api.nvim_list_bufs()
      print("Opened buffers:\n")
      for _, id in pairs(ids) do
        if vim.api.nvim_buf_is_loaded(id) then
          local name = vim.api.nvim_buf_get_name(id)
          print(id .. ". " .. name)
        end
      end
    end, {}
  )
end

M.setup()

return M
