#!yaml-readme -p podcasts/*/show.yaml --output podcasts.md

| Name | RSS | Description |
|---|---|---|
{{- range $item := .}}
| [{{$item.title}}](podcasts/{{$item.parentname}}/README.md) | [![RSS](https://img.shields.io/badge/rss-F88900?style=flat&logo=rss&logoColor=white)](https://linuxsuren.github.io/awesome-feeds/podcasts/{{$item.parentname}}/index.rss) | {{$item.description}} |
{{- end}}

## How to use
All above Podcasts feeds are not offically published. We could not listen those episodes in the normal way. But you could choose the following platforms or tools:

* [Google Podcasts](https://podcasts.google.com/)
  * Put it into the `Subscriptions` which on the left side
* [Apple Podcasts](https://www.apple.com/hk/en/apple-podcasts/)
  * Add it from `Library->Add a Show by URL`

> Please share it if you find other.

## Contribution
You could contribute an episode of an existing collection. 
Or, you could create a new collection as well.

### Add new episode
Find the target directory under [podcasts](podcasts). Then add a YAML file in it. 
Below is a sample YAML file:

```yaml
title: The episode title
index: 1
description: The episode description
filename: "The URL of target audio file"
localStorage: url # keep this be same
```

### Create new collection
You need to add more files if you want to create a new collection.

First, please create a new directory under [podcasts](podcasts).

then, add a YAML file named `show.yaml`:
```yaml
title: The podcasts title
description: The podcasts description
image: "The logo of this podcasts"
link: https://linuxsuren.github.io/awesome-feeds
categories:
- Technology
localStorage: url
```

Finally, please add the following action into [generator.yaml](.github/workflows/generator.yaml) to generate RSS file automatically.
```yaml
      - name: Generate RSS for remote jobs
        uses: opensource-f2f/open-podcasts@master
        with:
          output: podcasts/remote-jobs/index.rss
          showFile: podcasts/remote-jobs/show.yaml
          itemsPattern: podcasts/remote-jobs/item-*.yaml
          server: "fake"
```
