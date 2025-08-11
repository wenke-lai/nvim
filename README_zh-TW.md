# 我的 NeoVim 配置

## 快速開始

1. 安裝 NeoVim `brew install neovim`
2. 複製此配置到 `~/.config/nvim/`
3. 開啟 Neovim - lazy.nvim 會自動啟動並安裝所有插件

## 套件管理器

| 名稱 | 網址 | 用途 | 檔案路徑 |
|------|-----|------|----------|
| lazy.nvim | https://github.com/folke/lazy.nvim | Neovim 套件管理器 | `lua/config/lazy.lua` |

## 已安裝套件

| 名稱 | 網址 | 用途 | 檔案路徑 | 相依套件 |
|------|-----|------|----------|----------|
| telescope.nvim | https://github.com/nvim-telescope/telescope.nvim | 檔案、文字等模糊搜尋工具 | `lua/plugins/telescope.lua` | plenary.nvim |
| neo-tree.nvim | https://github.com/nvim-neo-tree/neo-tree.nvim | 檔案瀏覽側邊欄 | `lua/plugins/neo-tree.lua` | plenary.nvim, nvim-web-devicons, nui.nvim |
| mason.nvim | https://github.com/williamboman/mason.nvim | LSP/DAP/格式化工具安裝器 | `lua/plugins/lspconfig.lua` | mason-lspconfig.nvim |
| mason-lspconfig.nvim | https://github.com/williamboman/mason-lspconfig.nvim | Mason 與 lspconfig 的橋接器 | 自動載入相依套件 | 無 |
| nvim-lspconfig | https://github.com/neovim/nvim-lspconfig | LSP 客戶端配置 | `lua/plugins/python-lsp.lua`, `lua/plugins/svelte-lsp.lua` | mason.nvim, mason-lspconfig.nvim |
| plenary.nvim | https://github.com/nvim-lua/plenary.nvim | Lua 工具函式庫（相依套件） | 自動載入相依套件 | 無 |
| nvim-web-devicons | https://github.com/nvim-tree/nvim-web-devicons | 檔案類型圖示 | 自動載入相依套件 | 無 |
| nui.nvim | https://github.com/MunifTanjim/nui.nvim | UI 元件函式庫 | 自動載入相依套件 | 無 |

## 配置檔案

### 核心配置
- `init.lua` - 進入點
- `lua/config/lazy.lua` - 套件管理器設定
- `lua/config/keymaps.lua` - 全域快捷鍵

### 套件配置
- `lua/plugins/telescope.lua` - 模糊搜尋器
- `lua/plugins/neo-tree.lua` - 檔案瀏覽器
- `lua/plugins/lspconfig.lua` - Mason/LSP 安裝器
- `lua/plugins/python-lsp.lua` - Python 語言伺服器
- `lua/plugins/svelte-lsp.lua` - Svelte 語言伺服器

## 快捷鍵

### 全域快捷鍵
- `kj`（插入模式）- 退出到一般模式
- `<leader>qq` - 關閉所有視窗

### Telescope（模糊搜尋）
- `<leader>ff` - 搜尋檔案
- `<leader>fg` - 即時搜尋文字內容
- `<leader>fb` - 搜尋緩衝區
- `<leader>fh` - 搜尋說明文件

### Neo-tree（檔案瀏覽器）
- `<leader>e` - 切換 Neo-tree 開關
- `<leader>o` - 聚焦到 Neo-tree

### LSP（語言伺服器協定）
- `gD` - 跳到宣告
- `gd` - 跳到定義
- `K` - 顯示懸浮文件
- `gi` - 跳到實作
- `<C-k>` - 顯示簽名說明
- `<leader>rn` - 重新命名符號
- `<leader>ca` - 程式碼動作
- `gr` - 尋找參考
- `<leader>f` - 格式化程式碼

## LSP 語言伺服器
- **pyright** - Python 語言伺服器（`lua/plugins/python-lsp.lua`）
- **svelte** - Svelte 語言伺服器（`lua/plugins/svelte-lsp.lua`）

## 安裝狀態
- 所有套件版本鎖定在 `lazy-lock.json`
- 已啟用自動更新檢查
- 透過 lazy.nvim 自動啟動程序安裝

## 備註

### Leader 鍵設定
- Leader 鍵設定為空白鍵（Space）
- Local Leader 鍵設定為反斜線（\）

### 新增套件
1. 在 `lua/plugins/` 建立新檔案，以套件名稱命名
2. 回傳套件規格表格與設定
3. 重新啟動 Neovim - lazy.nvim 會自動安裝

### 套件管理指令
- `:Lazy` - 開啟 lazy.nvim 管理介面
- `:Lazy sync` - 更新所有套件
- `:Mason` - 開啟 Mason 管理介面（LSP 伺服器管理）