#import "styles.typ": styles

#let get_footer(
  footer_text: "footer text",
  nameplate_image: "nameplate",
  page: none
) = [
  #grid(
    columns: (1fr, auto),
    align: (left, right)
    footer_text,
    if(page != none and page.numbering != none)[
      #counter(page).display("1", both: true)
    ],
    [#box(baseline: 35%)[#image(nameplate)]],
]
