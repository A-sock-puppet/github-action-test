#set par(justify: true)

#set heading(numbering: "1.1. ")  
#show heading: set text(font: ("Libertinus Serif", "STHeiti"))

#set text(font: ("Libertinus Serif", "STSong"), lang: "zh", region: "cn")
#show emph: text.with(font: ("Libertinus Serif", "STKaiti"))
#show strong: text.with(font: ("Libertinus Serif", "STHeiti"))

= Test

```cpp
#include <iostream>
int main() {
    std::cout << "Hello, World!";
    return 0;
}
```

= AAA
一些文字

== 第二级

=== 第三级
#lorem(50)
=== Tier 3
#lorem(20)
== Tier 2
_italic 楷体_

= BBB
*strong 黑体*
