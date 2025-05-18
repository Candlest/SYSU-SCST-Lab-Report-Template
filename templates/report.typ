#import "shared.typ": *

#let report(
  title: "实验报告",
  subtitle: "Lab 0: 环境准备",
  name: "张三",
  stdid: "11223344",
  classid: "计科一班",
  major: "计算机科学与技术",
  school: "计算机学院",
  time: "2022~2023 学年第二学期",
  banner: none + "",
  body,
) = {
  set document(title: title)

  show: shared

  let fieldname(name) = [
    #set align(right + horizon)
    #set text(font: fonts.serif)
    #name
  ]

  let fieldvalue(value) = [
    #set align(left + horizon)
    #set text(font: fonts.serif)
    #value
  ]

  align(center)[
    #if (banner == none) {
      v(200pt)
    } else {
      image(banner, height: 200pt, width: 95%, fit: "contain")
    }
    #linebreak()
    #v(50pt, weak: true)
    #block(text(weight: "semibold", 30pt, title))
    #v(50pt, weak: true)
    #block(text(weight: "medium", 24pt, subtitle))

    #v(140pt, weak: true)
    #set text(14.5pt)

    #grid(
      columns: (200pt, 240pt),
      row-gutter: 1em,
      fieldname(text("姓") + h(2em) + text("名：") + h(1em)), fieldvalue(name),
      fieldname(text("学") + h(2em) + text("号：") + h(1em)), fieldvalue(stdid),
      fieldname(text("教学班号：") + h(1em)), fieldvalue(classid),
      fieldname(text("专") + h(2em) + text("业：") + h(1em)), fieldvalue(major),
      fieldname(text("院") + h(2em) + text("系：") + h(1em)), fieldvalue(school),
    )

    #v(40pt)
    #set text(13pt)
    #text(time)
    #pagebreak()
    
    #set page(
      header: context {
        // Title top left
        set text(10pt)
        let _sym = ""
        place(
          top + left,
          {
            if query(heading.where(level: 1)).find(h => h.location().page() == here().page()) == none {
              // Filter headers that come after the current page
              let smh = query(heading.where(level: 1)).filter(h => h.location().page() <= here().page())
              _sym + smh.last().body // last element in array is newest level 1 headline
            } else {
              let onPageHeading = query(heading.where(level: 1)).filter(h => h.location().page() == here().page())
              _sym + onPageHeading.first().body
            }
          },
          dy: 1cm,
          dx: 0cm,
        )
        place(
          top + right,
          {
            if query(heading.where(level: 2)).find(h => h.location().page() == here().page()) == none {
              let sub = query(heading.where(level: 2)).filter(h => h.location().page() <= here().page())
              sub.last().body
            } else {
              let onPageSub = query(heading.where(level: 2)).filter(h => h.location().page() == here().page())
              onPageSub.first().body
            }
          },
          dy: 1cm,
          dx: 0cm,
        )
        place(
          top + left,
          line(length: 100%, stroke: 0.4pt),
          dy: 1.4cm, // 根据文字行高调整线的位置
        )
      },
    )
  ]

  set align(left + top)
  set par(justify: true, first-line-indent: 2em, leading: line_height)

  body
}

#let title(content: "") = align(center)[
  #set text(26pt, weight: "bold")
  #v(2em)
  #content
  #v(1.625em)
]
