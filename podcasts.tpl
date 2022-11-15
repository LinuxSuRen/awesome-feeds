#!yaml-readme -p podcasts/*/show.yaml --output podcasts.md

| Name | RSS | Description |
|---|---|---|
{{- range $item := .}}
| {{$item.title}} | [![RSS](https://img.shields.io/badge/rss-F88900?style=flat&logo=rss&logoColor=white)](https://linuxsuren.github.io/awesome-feeds/podcasts/{{$item.parentname}}/index.rss) | {{$item.description}} |
{{- end}}
