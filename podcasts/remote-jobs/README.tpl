#!yaml-readme -p podcasts/remote-jobs/item-*.yaml --output README.md

There are {{len .}} episodes here:

{{- range $val := .}}
* {{$val.title}}
{{- end}}
