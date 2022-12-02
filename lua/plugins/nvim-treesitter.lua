local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
  ensure_installed = {
    "bash",
    "dart",
    "dockerfile",
    "javascript",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "ruby",
    "rust",
    "toml",
    "v",
    "yaml",
  },
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { } },
})
