local Config = require("config")

require("events.new-tab-button").setup()
require("events.tab-title").setup({ hide_active_tab_unseen = true, numbered_unseen_glyphs = true })

return Config:init()
	:append(require("config.appearance"))
	:append(require("config.keymaps"))
	:append(require("config.general")).options
