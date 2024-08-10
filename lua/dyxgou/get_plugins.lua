-- Function to load plugins from a directory recursively

local M = {}

local function get_plugins_dir(directory)
	local plugins_list = {}
	local config_path = vim.fn.stdpath("config")
	local plugins_paths = vim.fn.glob(config_path .. directory)

	local plugins = vim.split(plugins_paths, "\n")

	for _, plugin_path in pairs(plugins) do
		local config_path_len = string.len(config_path .. "/lua/") + 1
		local extention_len = string.len(".lua")
		local unformated_path = string.sub(plugin_path, config_path_len, string.len(plugin_path) - extention_len)
		local formated_path = string.gsub(unformated_path, "/", ".")

		local import_table = {
			import = formated_path,
		}

		table.insert(plugins_list, import_table)
	end

	return plugins_list
end

local plugins = get_plugins_dir("/lua/dyxgou/plugins/*/plugin.lua")

M.plugin_files = plugins

return M
