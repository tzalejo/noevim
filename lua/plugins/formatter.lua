return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup {
            filetype = {
                vue = {
                    -- prettier
                    function()
                        return {
                            exe = "prettier",
                            args = {
                                "--stdin-filepath",
                                vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                                "--single-quote",
                            },
                            stdin = true,
                        }
                    end,
                },
            },
        }
    end,
}



