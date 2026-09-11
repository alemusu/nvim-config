return {
    {
        -- We create a local "dummy" plugin so Lazy manages it
        "unokai-loader",
        dir = vim.fn.stdpath("config"), -- Points to your ~/.config/nvim folder
        lazy = false,    -- We want this loaded instantly on startup
        priority = 1000, -- Highest priority: load before ANY other UI plugins
        config = function()
            -- 1. Enable True Colors
            vim.opt.termguicolors = true
            
            -- 2. Execute the colorscheme
            vim.cmd([[colorscheme unokai]])
            
            -- 3. Force Transparency (Overrides whatever unokai set)
            vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
            vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]]) -- Inactive windows
            vim.cmd([[hi EndOfBuffer guibg=NONE ctermbg=NONE]]) -- The empty '~' lines
            vim.cmd([[hi SignColumn guibg=NONE ctermbg=NONE]]) -- The gutter where numbers are
        end,
    }
}
