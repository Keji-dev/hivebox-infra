#!/bin/bash
REPO=$1
TAG=$2
TOKEN=$3
OWNER=$4

curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$OWNER/$REPO/git/tags \
  -d '{"tag":"$TAG","message":"Creation tag $TAG","object":"$(git rev-parse HEAD)","type":"commit","tagger":{"name":"Monalisa Octocat","email":"octocat@github.com","date":"2011-06-17T14:53:35-07:00"}}'
