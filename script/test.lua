local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
local codelldb_path = mason_path .. "bin/codelldb"
local liblldb_path = mason_path .. "packages/codelldb/extension/lldb/lib/liblldb"
local this_os = vim.loop.os_uname().sysname

print(mason_path)
print(codelldb_path)
print(liblldb_path)
print(this_os)
