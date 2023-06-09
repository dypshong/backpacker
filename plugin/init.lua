print("INIT")

Backpacker = {}
function Backpacker.Install()
  print("HE!!")
end


-- export list 
vim.api.nvim_create_user_command(
'BackpackerInstall',
Backpacker.Install,
{ nargs = 0 })
