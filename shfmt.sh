#!/bin/sh -l

echo "HELLO MY FRIENDS"
printenv
echo "DUDE"
cat /github/workflow/event.json
COMMENTS_URL=$(cat /github/workflow/event.json | jq -r .pull_request.comments_url)
echo $COMMENTS_URL
