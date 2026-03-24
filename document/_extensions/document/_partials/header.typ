#import "styles.typ": styles

#let get_header(
  logo: "logo"
  header_text: "header text"
)[
  #header_text
  #h(1fr)
  #box(baseline: 35%)[#image(logo)] // Default header ascent is 30%, so (100% - 30%)/2
]
