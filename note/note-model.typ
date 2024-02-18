#import "@preview/lemmify:0.1.5": *
#import "@preview/lemmify:0.1.5": *
#let (
  
  proposition, 
 rules: thm-rules
) = default-theorems("thm-group", lang: "en")


/*分别计数*/
#let (                                   //定理,引理,推论
  theorem, lemma,corollary,
  rules: thm-rules-a
) = default-theorems("thm-group-a",lang:"en",thm-styling:thm-style-simple)
#let (                                  //证明
 proof,
  rules: thm-rules-p
) = default-theorems("thm-group-p",thm-styling:thm-style-proof)
#let (
 example,
  rules: thm-rules-example
) = default-theorems("thm-group-example",thm-styling:thm-style-simple)

//初始化remark
#let (remark,rules:thm-rules-remark
)=default-theorems("thm-group-remark",thm-styling:thm-style-simple)
#let (remark,rules:thm-rules-remark
)=default-theorems("thm-group-remark",thm-styling:thm-style-simple)
 //定义
 #let dinyi(thm-type,name,number,body) = box(
{[*_Def_* #number
]
body
},
fill: rgb("#E6E6FA"),
  inset: 1em
                  )
#let dy-styling =(thm-styling:dinyi)
#let (dy,rules:thm-rules-def) = new-theorems("thm-group-def",("dy":"def"),..dy-styling)

#let project(course: "", title: "", authors: (), date: none, body) = {
  // 文档基本信息
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 12mm, right: 12mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: center,
  )
  
  // 页眉
  set page(
    header: {
      set text(font:"DejaVu Math TeX Gyre", 10pt, baseline: 8pt, spacing: 3pt)

      grid(
        columns: (1fr, 1fr, 1fr),
        align(left, course),
        align(center, title),
        align(right, date),
      )
      
      line(length: 100%, stroke: 0.5pt)
    }
  )

  // 页脚
  set page(
    footer: {
      set text(font: "DejaVu Math TeX Gyre", 10pt, baseline: 8pt, spacing: 3pt)
      set align(center)
      
      grid(
        columns: (1fr, 1fr),
        align(left, authors.map(a => a.name).join(", ")),
        align(right, counter(page).display("1")),
      )
    }
  )

  set text(font: "DejaVu Math TeX Gyre", lang: "zh", size: 12pt)
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading(numbering: "1.1")
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.5em, [#title]))
    #v(1.1em, weak: true)
  ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 0.8em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.email \
        #author.phone
      ]),
    ),
  )
  
  // Main body.
  set par(justify: true)





  set par(first-line-indent: 2em)

show: thm-rules-a
show: thm-rules-p
show: thm-rules-example
show: thm-rules-remark
show: thm-rules
show: thm-rules-def  
body
}