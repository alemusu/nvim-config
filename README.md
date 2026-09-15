# Neovim personal configuration
This is a personal project, a text editor I use for programming using Mason to use LSPs. It's very simple and modular.
## Structure
<img width="875" height="461" alt="image" src="https://github.com/user-attachments/assets/af747551-e68b-4e3f-b6f3-ec92a52977a9" />
\
The main file is the init.lua which initializes the package manager (Lazy) to import the plugins from the folder plugins and 
then requires the files from the folder "core", with the settings and keymaps I've created. \
The colors are from the old Vim, I exported them into a file unokai.vim to use them as colorscheme. The background is semi transparent 
but can be change to opaque dynamically.

## Keymaps
This is the file in which I create keymaps for both general use and plugins using vim motions and commands. For example:\
This moves the text selected in visual mode, inserting it into loops or functions dynamically.\

<img width="527" height="74" alt="image" src="https://github.com/user-attachments/assets/4705c6e9-6030-4fe5-b67b-365c41d36c32" />
\
This formats the indent of the whole file.\
<img width="424" height="99" alt="image" src="https://github.com/user-attachments/assets/736128c8-0ce1-49b7-8873-f8715248210f" />
\

## Settings
This is the general settings, for example indenting, line numbers, scrolling, splits, or even setting a different yanking (copying) to have a sepparate clipboard only for neovim. Check the file for more.\
<img width="960" height="328" alt="image" src="https://github.com/user-attachments/assets/60b7333b-fbe5-4bb0-be91-178fe1e958d4" />

## Pluggins
- blink -> for plugin management
- colorscheme -> loads unokai.lua and applies some other details
- gruvbox -> it's another colorscheme for when I get tired of unokai
- telescope -> fast switch between files, look for files, words in the folder or git repo
- undotree -> saves a list in form of a tree of all changes done to a file
- nvim-treesitter -> manages syntax trees for the languages
- nvim-lspconfig -> uses Mason to manage Language Service Providers depending on the language of the files\
Telescope:\
<img width="1914" height="1079" alt="image" src="https://github.com/user-attachments/assets/f77498d6-5e56-4838-91c4-6b90d3db551a" />\
Undotree:\
<img width="1917" height="1079" alt="image" src="https://github.com/user-attachments/assets/e74481d9-7306-4267-bd56-27a7023c0b86" />\
Nvim-lspconfig / Mason:\
<img width="1910" height="1077" alt="image" src="https://github.com/user-attachments/assets/05dc1ec1-784c-439a-b505-db82c873d711" />\
Blink / Lazy:\
<img width="1917" height="1078" alt="image" src="https://github.com/user-attachments/assets/89e5de03-608b-4706-8dca-2c9c8adbf7fd" />\




