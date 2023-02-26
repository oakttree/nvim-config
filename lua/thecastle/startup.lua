   
local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = {
             [[                                                 ]],
	           [[                                                 ]],
             [[                                                 ]],
             [[                                                 ]],   
     	       [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
	           [[                                                 ]],
             [[                               __                ]],
             [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
             [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
             [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
             [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
             [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],       }
         dashboard.section.buttons.val = {
             dashboard.button( "i", "  New file" , ":ene <BAR> startinsert <CR>"),
             dashboard.button("e", "פּ Open Tree", ":NvimTreeToggle<CR>"),
             dashboard.button("f", " Find Files", ":Telescope find_files<CR>"),
             dashboard.button( "q", "  Quit" , ":qa<CR>"),
         }
         
         local handle = io.popen('fortune')
         local fortune = handle:read("*a")
         handle:close()
         dashboard.section.footer.val = fortune

         dashboard.config.opts.noautocmd = true

         
         alpha.setup(dashboard.config)

