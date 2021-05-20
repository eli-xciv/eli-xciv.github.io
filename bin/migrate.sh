#!/bin/bash
printf -v date '%(%Y-%m-%d %H:%M:%S)T\n' -1

gssg ---domain "http://localhost:8080" --url "https://eli-xciv.github.io" --dest docs

git add .

git commit -m "Blog Update: $date"

git push
