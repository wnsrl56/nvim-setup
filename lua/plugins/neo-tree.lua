return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup({
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "󰜌",
				default = "*",
				highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "[+]",
				highlight = "NeoTreeModified",
			},
			name = {
				trailing_slash = false,
				use_git_status_colors = true,
				highlight = "NeoTreeFileName",
			},
			git_status = {
				symbols = {
					-- Change type
					added = "✚", -- but this is redundant info if you use git_status_colors on the name
					modified = "", -- but this is redundant info if you use git_status_colors on the name
					deleted = "✖", -- this can only be used in the git_status source
					renamed = "󰁕", -- this can only be used in the git_status source
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "",
					conflict = "",
				},
			},
			indent = {
				indent_size = 2,
				padding = 1, -- extra padding on left hand side
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "└",
				highlight = "NeoTreeIndentMarker",
				with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
				expander_collapsed = "",
				expander_expanded = "",
				expander_highlight = "NeoTreeExpander",
			},
			window = {
				width = 48,
			},
			open_on_setup = true,
			auto_close = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
				ignore_list = {},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				}, -- 현재 파일을 따라감
				use_libuv_file_watcher = true, -- libuv 파일 감시기 사용
				filtered_items = {
					visible = true, -- 숨김 파일 보이기
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						".DS_Store",
						"thumbs.db",
						"node_modules",
						".vscode",
						".idea",
					},
					never_show = { -- 절대 보이지 않을 파일 목록
						".git",
						".cache",
					},
				},
				commands = {
					system_open = "xdg-open",
				},
			},
		})
	end,
}
