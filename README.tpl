#!yaml-readme -p data/*.yaml --output README.md --group-by kind

There are many awesome blogs or [Podcasts](podcasts.md) here. And we could read those high-quality content by the feeds.

{{- range $key, $val := .}}

## {{$key}}

| GitHub | Feed | Introduction |
|---|---|---|
{{- range $item := $val}}
| [{{$item.github}}](https://github.com/{{$item.github}}) | {{$item.feed}} | {{$item.introduction}} |
{{- end}}
{{end}}

## Contribution
Please add a YAML file in the directory [data](data) if you want to contribute a Feed.
