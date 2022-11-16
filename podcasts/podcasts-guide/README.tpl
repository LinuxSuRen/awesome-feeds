#!yaml-readme -p podcasts/podcasts-guide/item-*.yaml --output README.md

There are {{len .}} episodes here:

{{- range $val := .}}
* {{$val.title}}
{{- end}}
