# plantuml-cli

PlantUMLのCLI実行用Image、日本語フォントはNotoはインストール済み。

## Usage
```
$ docker run --rm -v {変換するファイルパス}:/tmp yasumasatakai/plantuml-cli \
    plantuml /tmp/{変換するファイル名} -charset UTF-8
```

## 日本語利用時
UMLにフォント指定をしてください
```
@startuml
skinparam {
  defaultFontName Noto Sans CJK JP Black Regular
}
@enduml
```
