vim.cmd([[
let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';'
let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
let &shellpipe  = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
set shellquote= shellxquote=
]])

require("calista.core")
require("calista.lazy")
