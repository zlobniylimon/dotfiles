local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local zlimon_group = augroup('zlimon', {})

autocmd('LspAttach', {
    group = zlimon_group,
    callback = function(e)
        local opts = { buffer = e.buf }
        local client = vim.lsp.get_client_by_id(e.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, e.buf)
            vim.keymap.set('i', '<C-space>', vim.lsp.completion.get, opts)
        end
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, opts)
    end
})
vim.lsp.enable({ "lua_ls", "gopls", "ruff" })
