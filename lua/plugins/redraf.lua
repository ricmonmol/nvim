return {
  "jim-at-jibba/nvim-redraft",
  dependencies = {
    { "folke/snacks.nvim", opts = { input = {} } },
  },
  event = "VeryLazy",
  build = "cd ts && npm install && npm run build",
  opts = {
    llm = {
      models = {
        { provider = "anthropic", model = "claude-haiku-4-5-20251001", label = "Claude 4.5 Haiku" },
      },
      default_model_index = 1,
    },
  },
}
