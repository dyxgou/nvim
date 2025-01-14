return {
	"epwalsh/pomo.nvim",
	version = "*", -- Recommended, use latest release instead of latest commit
	lazy = true,
	cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
	dependencies = {
		-- Optional, but highly recommended if you want to use the "Default" timer
		"rcarriga/nvim-notify",
	},

	config = function()
		require("pomo").setup({
			sessions = {
				pomodoro = {
					{ name = "Programming", duration = "10m" },
					{ name = "Short Break", duration = "2m" },
					{ name = "Programming", duration = "10m" },
					{ name = "Short Break", duration = "2m" },
					{ name = "Programming", duration = "10m" },
					{ name = "Long Break", duration = "15m" },
				},
			},
		})
	end,
}
