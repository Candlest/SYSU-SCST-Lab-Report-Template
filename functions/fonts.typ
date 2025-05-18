#let line_height = 1em

#let fonts = (
  serif: ("Source Han Serif SC", "Source Han Serif"),
  sans: ("Source Han Sans SC", "Source Han Sans"),
  monospace: ("JetBrains Mono", "Consolas"),
  math: ("Libertinus Math")
)

#let textbf(it) = block(text(font: fonts.sans, weight: "semibold", it))

#let textit(it) = block(text(style: "italic", it))
