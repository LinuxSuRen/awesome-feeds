#!yaml-readme -p podcasts/data-privacy/item-*.yaml --output README.md

There are {{len .}} episodes here:

{{- range $val := .}}
* {{$val.title}}
{{- end}}
