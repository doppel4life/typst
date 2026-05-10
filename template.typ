#import "gruvbox.typ" : colors

#let quote(body) = {
  align(center)[
    #block(width: 80%)[
      #text(fill: colors.blue, style: "italic")[
        #body
      ]
    ]
  ]
}

#let report_template(
  title : "Document Title",
  author : "Author Name",
  //department: "Department Name",
  body
) = {
  // Document Metadata
  set document(title : title, author : author)
  
  // Page & Layout Setup
  set page(
    fill : colors.background,
    paper : "a4",
    margin : (x: 2.5cm, y: 3cm),
    numbering : "1",
    header : align(right, text(8pt, gray)[#title]),
  )
  
  // Text Styling
  set text(
    fill: colors.foreground,
    font: "Libertinus Serif", 
    size: 11pt
  )

  set heading(numbering: "1.1.")
  set par(justify: true)

  // Title Page
  align(center + horizon)[
    #block(text(2em, weight: "bold", title))
    #v(1.5em)
    #text(1.2em, author) \
    //#text(1em, style: "italic", department)
    #v(2em)
    #datetime.today().display("[month repr:long] [day], [year]")
  ]
  
  pagebreak()

  // Table of Contents
  outline(indent: auto)
  pagebreak()

  // The actual content
  body
}
