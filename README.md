# My Personal LazyVim Configuration

This is my personal Neovim setup based on [LazyVim](https://www.lazyvim.org/), fine-tuned for **Java development** but also supporting a wide range of languages I work with daily. Feel free to explore, fork, and adapt it to your own workflow. Contributions and suggestions are always welcome!

**Main stack:**
- Editor: [Neovim](https://neovim.io/) + [LazyVim](https://www.lazyvim.org/)
- Java LSP: [jdtls](https://github.com/eclipse-jdtls/eclipse.jdt.ls) via [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- Debug: [nvim-dap](https://github.com/mfussenegger/nvim-dap) + java-debug-adapter
- Fuzzy finder: [Snacks picker](https://github.com/folke/snacks.nvim)
- Languages: Java, Kotlin, Go, Python, Ruby, TypeScript, JavaScript, Elixir, Clojure, SQL, Terraform, YAML, JSON, Docker, Markdown, Shell

---

## Requirements (macOS)

Install all dependencies via Homebrew:

```bash
brew install neovim
brew install git
brew install curl
brew install fzf
brew install ripgrep
brew install fd
brew install lazygit
brew install openjdk@21
brew install go
```

### Java Setup

`jdtls` requires **Java 21 or higher**. Make sure `JAVA_HOME` points to Java 21 before opening Neovim:

```bash
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
```

If you manage multiple JDK versions, add aliases to your `.zshrc` or `.bashrc`:

```bash
alias jdk11='export JAVA_HOME=`/usr/libexec/java_home -v 11.0`'
alias jdk17='export JAVA_HOME=`/usr/libexec/java_home -v 17.0`'
alias jdk21='export JAVA_HOME=`/usr/libexec/java_home -v 21.0`'
```

Always run `jdk21` before opening Neovim for Java development.

### Go Setup

Make sure Go is installed and available in your `PATH`:

```bash
brew install go
go version
```

The LazyVim Go extra will automatically install `gopls`, `gofumpt` and `goimports` via Mason.

### Installation

```bash
git clone git@github.com:seu-usuario/nvim-config.git ~/.config/nvim
nvim  # opens and installs everything automatically
```

---

## Tips

- Always open Java projects from the folder containing `pom.xml` so jdtls indexes the project correctly
- Always run `jdk21` before opening Neovim for Java development — the LSP inherits `JAVA_HOME` from the environment
- Use `<leader>qs` when closing Neovim to save the session — restore it later with `<leader>ql`
- Format Java files: always use `<leader>cf` instead of `=` to properly handle chained methods
- Press `<leader>` and wait 1 second — **which-key** will show all available keymaps on screen
- Search for any keymap: `<leader>sk`
- A vertical guide line is set at column 120 (`colorcolumn`) to help keep lines within a readable length
- jdtls is configured with 2GB max heap (`-Xmx2G`) for better performance on large projects

---

# Keymaps Cheatsheet

> `<leader>` = `Space`

---

## Most Used

| Keymap | Action |
|---|---|
| `gd` | Goto Definition |
| `grr` | References |
| `gri` | Goto Implementation |
| `grt` | Goto Type Definition |
| `grn` | Rename |
| `gra` | Code Action |
| `K` | Hover / Documentation |
| `Ctrl+k` | Signature Help (method parameters) |
| `]d` / `[d` | Next / previous diagnostic |
| `<leader>co` | Organize Imports |
| `<leader>cf` | Format file |
| `<leader>db` | Toggle Breakpoint |
| `<leader>dc` | Run / Continue debug |
| `<leader>di` | Step Into |
| `<leader>do` | Step Out |
| `<leader>dO` | Step Over |
| `<leader>du` | DAP UI |
| `<leader>de` | Eval variable |
| `Ctrl+o` / `Ctrl+i` | Jump back / forward |

---

## By Group

### Files `<leader>f`

| Keymap | Action |
|---|---|
| `<leader>ff` | Find Files (root) |
| `<leader>fF` | Find Files (cwd) |
| `<leader>fr` | Recent Files |
| `<leader>fc` | Find Config File |
| `<leader>fb` | Buffers |
| `<leader>fe` | Explorer (root) |

### Search `<leader>s`

| Keymap | Action |
|---|---|
| `<leader>sg` | Grep (root) |
| `<leader>sG` | Grep (cwd) |
| `<leader>ss` | LSP Symbols |
| `<leader>sS` | LSP Workspace Symbols |
| `<leader>sd` | Diagnostics |
| `<leader>sb` | Buffer Lines |
| `<leader>sk` | Keymaps |
| `<leader>sr` | Search and Replace |

### Code `<leader>c`

| Keymap | Action |
|---|---|
| `<leader>cf` | Format |
| `<leader>co` | Organize Imports |
| `<leader>ca` | Code Action |
| `<leader>cr` | Rename |
| `<leader>cs` | Symbols (Trouble) |
| `<leader>cm` | Mason |

### Java `<leader>c`

| Keymap | Action |
|---|---|
| `<leader>cxv` | Extract Variable |
| `<leader>cxc` | Extract Constant |
| `<leader>cxm` | Extract Method (visual mode) |
| `<leader>cgs` | Goto Super |
| `<leader>cgS` | Goto Subjects |

### Debug `<leader>d`

| Keymap | Action |
|---|---|
| `<leader>db` | Toggle Breakpoint |
| `<leader>dB` | Conditional Breakpoint |
| `<leader>dc` | Run / Continue |
| `<leader>di` | Step Into |
| `<leader>do` | Step Out |
| `<leader>dO` | Step Over |
| `<leader>dC` | Run to Cursor |
| `<leader>du` | DAP UI |
| `<leader>de` | Eval variable |
| `<leader>dt` | Terminate |

### Tests `<leader>t`

| Keymap | Action |
|---|---|
| `<leader>tt` | Run All Tests (class) |
| `<leader>tr` | Run Nearest Test |
| `<leader>tT` | Pick Test |

### Git `<leader>g`

| Keymap | Action |
|---|---|
| `<leader>gs` | Git Status |
| `<leader>gd` | Git Diff |
| `<leader>gS` | Git Stash |
| `<leader>gg` | LazyGit |

### Buffers

| Keymap | Action |
|---|---|
| `H` / `L` | Previous / next buffer |
| `<leader>bp` | Pin buffer |
| `<leader>bd` | Close buffer |
| `<leader>br` | Close buffers to the right |
| `<leader>bl` | Close buffers to the left |

### Diagnostics `<leader>x`

| Keymap | Action |
|---|---|
| `<leader>xx` | Diagnostics (Trouble) |
| `<leader>xX` | Buffer Diagnostics |
| `<leader>xQ` | Quickfix List |
| `]d` / `[d` | Next / previous error |

### Session `<leader>q`

| Keymap | Action |
|---|---|
| `<leader>qs` | Restore Session |
| `<leader>ql` | Restore Last Session |
| `<leader>qd` | Don't Save Session |

### Flash (fast navigation)

| Keymap | Mode | Action |
|---|---|---|
| `s` | normal, visual | Flash — jump to 2 characters |
| `S` | normal, visual | Flash Treesitter — select block |
| `r` | operator | Remote Flash |
| `R` | operator, visual | Treesitter Search |

### Multiple Cursors (vim-visual-multi)

| Keymap | Action |
|---|---|
| `Ctrl+n` | Select word / next occurrence |
| `Ctrl+Down` / `Ctrl+Up` | Add cursor below / above |
| `\\A` | Select all occurrences |
| `n` / `N` | Next / previous occurrence |
| `q` | Skip current occurrence |
| `Q` | Remove current cursor |
| `<Tab>` | Toggle cursor / visual mode |
| `Esc` | Exit multi-cursor |

### DiffView

| Command | Action |
|---|---|
| `:DiffviewOpen` | Open working tree diff |
| `:DiffviewOpen HEAD~1` | Diff with previous commit |
| `:DiffviewFileHistory` | File commit history |
| `:DiffviewClose` | Close |

