---@diagnostic disable: undefined-global

return {
  -- Markdown: Image
  s("img", {
    t("![](./"),
    i(0),
    t(")"),
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
