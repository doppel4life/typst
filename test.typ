#import "template.typ" : report_template
#import "gruvbox.typ" : colors

#show : report_template.with(
  title : "Test",
  author : "doppel"
)

#text(fill : colors.blue)[text]
