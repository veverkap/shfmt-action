#!/bin/sh -l

echo "ENVIRONMENT"
printenv
echo "GITHUB FOLDER CONTENTS"
ls -al /github

cat /github/workflow/event.json
