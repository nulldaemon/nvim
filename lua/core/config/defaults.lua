local fn = vim.fn

return {
  options = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- keep in sync with the system clipboard
    completeopt = "menu,menuone,noselect", -- A comma separated list of options for Insert mode completion
    conceallevel = 0, -- so that `` is visible in markdown files
    confirm = true, -- confirm to save changes before exiting modified buffer
    cursorline = true, -- highlight the current line
    dir = fn.stdpath("data") .. "/swp", -- swap file directory
    expandtab = true, -- use spaces instead of tabs
    formatoptions = "jcroqlnt", -- tcqj
    grepprg = "rg --hidden --vimgrep --smart-case --", -- use rg instead of grep
    hidden = true, -- Enable modified buffers in background
    history = 500, -- Use the 'history' option to set the number of lines from command mode that are remembered.
    ignorecase = true, -- ignore case in search patterns
    inccommand = "nosplit", -- preview incremental substitute
    list = false, -- enable or disable listchars
    listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<", -- which list chars to show
    mouse = "nv", -- enable mouse see :h mouse
    number = true, -- set numbered lines
    pumblend = 10, -- Popup blend
    pumheight = 10, -- Maximum number of entries in a popup
    relativenumber = true, -- set relative numbered lines
    scrolloff = 3, -- Minimal number of screen lines to keep above and below the cursor
    sessionoptions = { "buffers", "curdir", "tabpages", "winsize" },
    shiftround = true, -- Round indent
    shiftwidth = 2, -- the number of spaces inserted for each indentation
    showmode = false, -- we don't need to see things like -- INSERT -- anymore
    showtabline = 1, -- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
    sidescrolloff = 5, -- The minimal number of columns to scroll horizontally
    signcolumn = "yes", -- Always show the signcolumn, otherwise it would shift the text each time
    smartcase = true, -- Don't ignore case with capitals
    smartindent = true, -- Insert indents automatically
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = true, -- enable/disable swap file creation
    tabstop = 2, -- how many columns a tab counts for
    termguicolors = true, -- set term gui true colors (most terminals support this)
    timeoutlen = 400, -- time to wait for a mapped sequence to complete (in milliseconds)
    ttimeoutlen = 0, -- Time in milliseconds to wait for a key code sequence to complete
    undodir = fn.stdpath("data") .. "/undodir", -- set undo directory
    undofile = true, -- enable/disable undo file creation
    undolevels = 1000,
    updatetime = 300, -- faster completion
    wildignorecase = true, -- When set case is ignored when completing file names and directories
    wildmode = "longest:full,full", -- Command-line completion mode
    winminwidth = 5, -- minimum window width
    wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
*.mp3,*.oga,*.ogg,*.wav,*.flac
*.eot,*.otf,*.ttf,*.woff
*.doc,*.pdf,*.cbr,*.cbz
*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
*.swp,.lock,.DS_Store,._*
*/tmp/*,*.so,*.swp,*.zip,**/node_modules/**,**/target/**,**.terraform/**"
]],
  },

  plugins = {
    alpha = {
      -- Number of recent files shown in dashboard
      -- 0 disables showing recent files
      dashboard_recent_files = 5,
      -- disable the header of the dashboard
      disable_dashboard_header = false,
      -- disable quick links of the dashboard
      disable_dashboard_quick_links = false,
    },
    git = {
      -- which tool to use for handling git merge conflicts
      -- choose between "git-conflict" and "diffview" or "both"
      merge_conflict_tool = "git-conflict",
    },
    -- https://github.com/Allaman/kustomize.nvim
    kustomize = {
      dev = false,
    },
    lazy = {
      dev = {
        path = "$HOME/workspace/github.com/",
      },
    },
    noice = {
      enable = true, -- Noice heavily changes the Neovim UI ...
    },
    spectre = {
      -- enable advanced search and replace
      -- https://github.com/nvim-pack/nvim-spectre
      enable = true,
    },
    telescope = {
      -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
      -- requires cmake and gcc toolchain
      fzf_native = {
        enable = false,
      },
      -- enable greping in hidden files
      grep_hidden = true,
      -- which patterns to ignore in file switcher
      telescope_file_ignore_patterns = {
        "%.7z",
        "%.JPEG",
        "%.JPG",
        "%.V",
        "%.RAF",
        "%.burp",
        "%.bz2",
        "%.cache",
        "%.class",
        "%.dll",
        "%.docx",
        "%.dylib",
        "%.epub",
        "%.exe",
        "%.flac",
        "%.ico",
        "%.ipynb",
        "%.jar",
        "%.jpeg",
        "%.jpg",
        "%.lock",
        "%.mkv",
        "%.mov",
        "%.mp4",
        "%.otf",
        "%.pdb",
        "%.pdf",
        "%.png",
        "%.rar",
        "%.sqlite3",
        "%.svg",
        "%.tar",
        "%.tar.gz",
        "%.ttf",
        "%.webp",
        "%.zip",
        ".git/",
        ".gradle/",
        ".idea/",
        ".settings/",
        ".vale/",
        ".vscode/",
        "__pycache__/*",
        "build/",
        "env/",
        "gradle/",
        "node_modules/",
        "smalljre_*/*",
        "target/",
        "vendor/*",
      },
    },
    tex = {
      vimtex_compiler_method = "tectonic", -- Tool to compile LaTex files
      vimtex_view_method = "skim", -- Tool to view PDFs generated from LaTex
    },
  },

  theme = {
    -- catppuccin, nightfox, tokyonight, tundra, kanagawa
    name = "catppuccin",
    catppuccin = {
      -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      variant = "catppuccin-macchiato",
    },
    kanagawa = {
      -- kanagawa-dragon, kanagawa-lotus, kanagawa-wave
      variant = "kanagawa-wave",
    },
    nightfox = {
      -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
      variant = "carbonfox",
    },
    tokyonight = {
      -- night storm day moon
      variant = "night",
    },
  },
  -- treesitter parsers to be installed
  -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  treesitter_ensure_installed = {
    "bash",
    "cmake",
    "css",
    "dockerfile",
    "go",
    "hcl",
    "html",
    "java",
    "javascript",
    "json",
    "kotlin",
    "ledger",
    "lua",
    "markdown",
    "markdown_inline",
    "query",
    "python",
    "regex",
    "rust",
    "terraform",
    "toml",
    "vim",
    "yaml",
  },

  -- LSPs that should be installed by Mason-lspconfig
  lsp_servers = {
    "bashls",
    "dockerls",
    "jsonls",
    "gopls",
    "ltex",
    "marksman",
    "pyright",
    "lua_ls",
    "rust_analyzer",
    "tailwindcss",
    "terraformls",
    "texlab",
    "tsserver",
    "typst_lsp",
    "yamlls",
  },

  -- Tools that should be installed by Mason
  tools = {
    -- Formatter
    "black",
    "prettier",
    "stylua",
    "shfmt",
    -- Linter
    "eslint_d",
    "shellcheck",
    "tflint",
    "yamllint",
    "ruff",
    -- DAP
    "debugpy",
    "codelldb",
  },
}
