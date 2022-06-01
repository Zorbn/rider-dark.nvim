## Rider Dark
###### The Rider Dark theme from JetBrains' Rider IDE

##### Requirements:
- Treesitter (technically optional, but highly recommended)

Example installation (for packer.nvim):
```lua
use "zorbn/rider-dark.nvim"

-- Later, in your init.lua
vim.cmd[[colorscheme rider-dark]]
```

##### Inspired by:
The official Rider Dark theme as well as this port for VSCode: https://github.com/edsulaiman/jetbrains-rider-dark-theme

##### Terminal:
A terminal theme that works well with Rider Dark.
These are the recommended colors for use with the theme.
If you are using Windows Terminal you can copy paste the JSON below into your settings.json.

```json
{
    "background": "#262626",
    "black": "#262626",
    "blue": "#6C95EB",
    "brightBlack": "#323232",
    "brightBlue": "#0000FF",
    "brightCyan": "#00FFFF",
    "brightGreen": "#39CC8F",
    "brightPurple": "#ED94C0",
    "brightRed": "#F44747",
    "brightWhite": "#FFFFFF",
    "brightYellow": "#FFFF00",
    "cursorColor": "#D8D8DD",
    "cyan": "#008080",
    "foreground": "#A5A5AA",
    "green": "#85C46C",
    "name": "Rider Dark",
    "purple": "#C191FF",
    "red": "#800000",
    "selectionBackground": "#08335E",
    "white": "#FFFFFF",
    "yellow": "#C9A26D"
},
```
