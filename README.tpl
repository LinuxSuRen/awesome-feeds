#!yaml-readme -p data/*.yaml --output README.md --group-by kind

There are many awesome blog authors here. And we could read those high-quality content by the feeds.

{{- range $key, $val := .}}
Kind: {{$key}}
| GitHub | Feed | Introduction |
|---|---|---|
{{- range $item := $val}}
| [{{$item.github}}](https://github.com/{{$item.github}}) | {{$item.feed}} | {{$item.introduction}} |
{{- end}}
{{end}}
