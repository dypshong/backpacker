print("HERE")
module(..., package.seeall);

local plugins = {
}

-- config = {
-- pakcage_name,
-- installCommand = {},
-- installOptions = {},
--
-- }

function InstallPackage(config)
end

function BackpackerInstall()
end

local function Use(config)
  package_name = (type(config) == 'string') and config or config[1] 

  if plugins[package_name] then
    for k, v in pairs(plugins) do
      print(k, v)
    end
    print(package_name .. " already installed")
    return
  else
    for k, v in pairs(plugins) do
      print(k, v)
    end
    plugins[package_name] = config
  end

--  local fullpath = debug.getinfo(1,"S").source:sub(2)
--  print(fullpath)
--
--  io.open(package_name, 'r')
--
--  local url = 'https://github.com/' .. package_name
--  print(config.installCommand)
end

function UsePlugins(packages)
  for i, v in ipairs(packages) do
    Use(v)
  end
end
