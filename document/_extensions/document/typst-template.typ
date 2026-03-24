#import "styles.typ": styles
#import "cover.typ": cover
#import "table-of-contents.typ": table_of_contents
#import "header.typ": get_header
#import "footer.typ": get_footer

#let document_template(
  title:"$title$",
  subtitle:"$subtitle",
  author:"$author$",
  date: datetime.today(),
  header_text: "header text",
  footer_text: "footer text",
  body
) = {
  set page(..styles.page_config)
  set text(..styles.text_config)

  set heading(..styles.heading_config)
  show heading: it => (styles.heading_rules_setup)(it)

  cover(
    title: title,
    author: author
  )

  table_of_contents()


  page(
    header: get_header(header_text: header_text),
    footer: context[
      #get_footer(footer_text: footer_text, page: page)
    ],
  )[
    #counter(page).update(1)

    #set par(..styles.body_paragraph_config)
    #set table(align: center + horizon)

    #show figure: set align(center)
    #show math.equation: set text(weight: 400)

    #body
  ]

}
