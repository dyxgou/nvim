local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "red", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "󰟃", texthl = "white", linehl = "", numhl = "" })
vim.fn.sign_define("DapLogPoint", { text = "", texthl = "white", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "white", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "󰃆", texthl = "white", linehl = "", numhl = "" })

vim.keymap.set("n", "<leader>nt", dap.toggle_breakpoint, { desc = "DAP Toggle breakpoint" })
vim.keymap.set("n", "<leader>nc", dap.continue, { desc = "DAP Continue" })
vim.keymap.set("n", "<leader>no", dap.step_over, { desc = "DAP Step Over" })
vim.keymap.set("n", "<leader>ni", dap.step_over, { desc = "DAP Step Into" })
vim.keymap.set("n", "<leader>nov", dap.step_out, { desc = "DAP Step Out" })
vim.keymap.set("n", "<leader>nl", dap.run_last, { desc = "DAP Run last" })

dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

dap.adapters.java = function(callback)
	callback({
		type = "server",
		host = "127.0.0.1",
		port = 5005,
	})
end

dap.configurations.java = {
	{
		type = "java",
		request = "attach",
		name = "Debug (Attach) - Remote",
		hostName = "127.0.0.1",
		port = 5005,
	},
}

dap.adapters.go = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/repos/vscode-go/extension/dist/debugAdapter.js" },
}

dap.configurations.go = {
	{
		type = "go",
		name = "Debug",
		request = "launch",
		showLog = false,
		program = "${file}",
		dlvToolPath = vim.fn.exepath("/usr/bin/dlv"), -- Adjust to where delve is installed
	},
}
