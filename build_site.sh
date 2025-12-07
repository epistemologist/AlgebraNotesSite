#!/bin/bash

cp -r ../AlgebraNotes/AlgebraNotes/ ./content
git add ./content
git commit -m "Added content $(date)"
git push
# Vibe coded sed command to replace align commands
find "./content" -name '*.md' -print0 |
  xargs -0 sed -i \
    -e 's/\\begin{align\*}/\\begin{aligned}/g' \
    -e 's/\\end{align\*}/\\end{aligned}/g'

# npx quartz build --serve
npx quartz sync

