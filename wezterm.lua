-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Highway'

config.keys = {
    
    {
        key = 'k',
        mods = 'ALT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'l',
        mods = 'ALT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'LeftArrow',
        mods = 'ALT',
        action = wezterm.action.ActivatePaneDirection 'Left',
      },
      -- Navigate to the pane on the right with Alt + Right Arrow
      {
        key = 'RightArrow',
        mods = 'ALT',
        action = wezterm.action.ActivatePaneDirection 'Right',
      },
      -- Navigate to the pane above with Alt + Up Arrow
      {
        key = 'UpArrow',
        mods = 'ALT',
        action = wezterm.action.ActivatePaneDirection 'Up',
      },
      -- Navigate to the pane below with Alt + Down Arrow
      {
        key = 'DownArrow',
        mods = 'ALT',
        action = wezterm.action.ActivatePaneDirection 'Down',
      },

}

-- config.mouse_bindings = {
-- 	{
-- 		event = { Down = { streak = 1, button = "Right" } },
-- 		mods = "NONE",
-- 		action = wezterm.action_callback(function(window, pane)
-- 			local has_selection = window:get_selection_text_for_pane(pane) ~= ""
-- 			if has_selection then
-- 				window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
-- 				window:perform_action(act.ClearSelection, pane)
-- 			else
-- 				window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
-- 			end
-- 		end),
-- 	},
-- }
-- config.font =
--   wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })
-- and finally, return the configuration to wezterm
return config
