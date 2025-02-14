#import "@preview/subpar:0.2.0"                  // subpar
/*
  example usage:
    #subpar.grid(
      figure(image("/assets/andromeda.jpg"), caption: [
        An image of the andromeda galaxy.
      ]), <a>,
      figure(image("/assets/mountains.jpg"), caption: [
        A sunset illuminating the sky above a mountain range. 
      ]), <b>,
      columns: (1fr, 1fr),
      caption: [A figure composed of two sub figures.],
      label: <full>,
    )
*/

#import "@preview/codly:1.2.0": *                // better code block
#import "@preview/codly-languages:0.1.1": *
#import "@preview/hydra:0.5.2": hydra            // display header
#import "@preview/quick-maths:0.2.0": shorthands // shorthands

#set par(justify: true)

// #set page(
//     paper: "a4",
//     numbering: "1",
// )

#set heading(numbering: "1.1. ")  
#show heading: set text(font: ("Libertinus Serif", "STHeiti"))

//// uncomment when needed
// set page(paper: "a4", numbering: "1", header: context {
//   if calc.odd(here().page()) {
//     align(right, emph(hydra(1)))
//   } else {
//     align(left, emph(hydra(2)))
//   }
//   v(-0.8em)
//   line(length: 100%)
// })
// show heading.where(level: 1): it => pagebreak(weak: true) + it

// font
#set text(font: ("Libertinus Serif", "STSong"), lang: "zh", region: "cn")
#show emph: text.with(font: ("Libertinus Serif", "STKaiti"))
#show strong: text.with(font: ("Libertinus Serif", "STHeiti"))

// codly
#show: codly-init.with()
#codly(languages: codly-languages, display-icon: false)
#codly-disable()
/* 
example usage:
    #codly-enable()
    ```cpp
    int main() {
    return 0;
    }
    ```
*/

// link & reference
#show link: link => {
    set text(fill: rgb("#ee0000"))
    underline(link)
}

#set ref(supplement: it => {""})
#show ref: it => {
    let el = it.element
    set text(fill: rgb("#ee0000"))
    if (el == none) [??] else { it }
}

// math
#show: shorthands.with(
($+-$, $plus.minus$),
)

// font
#let bold_italic(txt) = {
  set text(font: ("Libertinus Serif", "STFangsong"))
  txt
}
#let italic(txt) = {
  set text(font: ("Libertinus Serif", "STKaiti"))
  txt
}
#let bold(txt) = {
  set text(font: ("Libertinus Serif", "STHeiti"))
  txt
}

// title & author
#let title(txt) = {
  align(strong(text(txt, size: 20pt)), center)
}
#let author(txt) = {
  align(italic(text(txt, size: 12pt)), center)
}

= Test

```cpp
#include <iostream>
int main() {
    std::cout << "Hello, World!";
    return 0;
}
```

= AAA
aaa
== BBB
bbb
== CCC
ccc
