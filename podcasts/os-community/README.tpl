#!yaml-readme -p podcasts/os-community/item-*.yaml --output README.md

There are {{len .}} episodes here:

{{- range $val := .}}
* {{$val.title}}
{{- end}}
