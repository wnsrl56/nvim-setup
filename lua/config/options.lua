local opt = vim.opt

-- tab/indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- visual
opt.number = true
opt.relativenumber = true -- 현재 라인 상대 평가
opt.termguicolors = true -- 256 생상 이상으로 표기
opt.signcolumn = "yes" -- debug 표기 등 추가 표기를 위한 컬럼 추가ㅣ

--etc
opt.encoding = "UTF-8"
opt.cmdheight = 1 -- cmd row를 1줄로
opt.scrolloff = 10
opt.mouse:append("a") -- visual 시 마우스 허가
opt.clipboard = "unnamedplus"
