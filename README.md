# GZ Typst Templates

For my personal usage.

个人使用的 Typst 模板，用于写作业和实验报告。

## Fonts

Install the fonts by yourself.

你可能需要自己安装一些字体，当然，这只是个人习惯（

- text: ("[CMU Serif](https://font.download/font/cmu-serif)", "Source Han Serif SC"),
- sans: ("Source Han Sans SC"),
- code: ("[Sarasa Term SC](https://github.com/be5invis/Sarasa-Gothic)","[JetBrains Mono](https://www.jetbrains.com/lp/mono/)", "Consolas"),
- math: ("[Libertinus Math](https://font.download/font/libertinus-math)")

[Sarasa Term SC](https://mirrors.tuna.tsinghua.edu.cn/github-release/be5invis/Sarasa-Gothic/LatestRelease/), Source Han Sans/Serif SC (或称 Noto Sans/Serif CJK SC) 可以在 Tuna Mirror 下载。
## Usage

- Install [Typst](https://typst.app)
- Clone this repo to any directory
- Link the repo to your project by `ln -s /path/to/repo/ ./base`
- Use this template in Typst (e.g. `#import "./base/templates/report.typ": *`)

- 安装 [Typst](https://typst.app)
- 将本仓库克隆到任意目录
- 通过 `ln -s /path/to/repo/ ./base` 将本仓库链接到你的项目
- 在 Typst 中使用模板（例如 `#import "./base/templates/report.typ": *`）

You can view the example in [usage.typ](./usage.typ).

你可以在 [usage.typ](./usage.typ) 中查看示例。

Suggestions: use relative path for the link, because Typst uses the directory of the compiled file as the root directory by default.

建议使用链接，因为 Typst 默认以编译文件所在目录为根目录。

## Templates

### Report

Use for writing lab reports.

用来写实验报告的模板，有封面。

```typ
#import "./base/templates/report.typ": *

#show: report.with(
  title: "实验报告实验",
  subtitle: "尝试使用 Typst 编写实验报告",
  name: "张三",
  stdid: "22223333",
  classid: "实验二班",
  major: "实验报告编写技术",
  school: "实验报告学院",
  time: "2022~2023 学年第二学期",
  banner: "../images/sysu.png" // 图片路径，相对于 report.typ 所在目录
)
```

### Homework

Use for writing homework.

这个模板用来写作业（数学作业），就是每一页最上面会有一些信息。

```typ
#import "./base/templates/homework.typ": *

#show: report.with(
    subject: "量子计算",
    title: "作业二",
    name: "张三",
    stdid: "22223333",
)
```
