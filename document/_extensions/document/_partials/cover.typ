#import "styles.typ": styles
#import "header.typ": get_header
#import "footer.typ": get_footer

#let cover(
  title: "Title"
) = {
  set text(fill: styles.primary_color)

  let title_text = [
    #text(
      size: 3em,
    )[
      #title
    ]
  ]
 
  page(
    numbering: none
  )[
    #align(horizon)[
      #title_text
    ]

    #align(bottom)[
      
    ]
  ]  
}
