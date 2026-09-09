local function keymap(mode, input, command)
    vim.keymap.set(mode, input, command, {noremap = true, silent = true})
end
local function nmap(input, command)
    keymap('n', input, command)
end
local function vmap(input, command)
    keymap('v', input, command)
end

-- Basic remap
nmap('<Leader>w', ':w<CR>')
nmap('<Leader>e', ':Oil<CR>')
nmap('<Leader>q', ':q<CR>')
-- copy to system buffer
vmap("<leader>y", '"+y')
