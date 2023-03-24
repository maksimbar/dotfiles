---@diagnostic disable: undefined-global

return {
  -- Markdown: Image
  s("img", {
    t("![](./"),
    i(0),
    t(")"),
  }),
  -- Markdown: Hidden details
  s("det", {
    t({ "<details>" }),
    t({ "", "\t<summary>" }),
    i(1),
    t({ "</summary>", "\t" }),
    i(2),
    t({ "", "</details>" }),
  }),
  -- Markdown: Left arrow
  s("<-", t("←")),
  -- Markdown: Right arrow
  s("->", t("→")),
  -- Markdown: Left double arrow
  s("<=", t("⇐")),
  -- Markdown: Right double arrow
  s("=>", t("⇒")),
  -- Markdown: Less than or equal to
  s("<=", t("≤")),
  -- Markdown: Greater than or equal to
  s(">=", t("≥")),
}
