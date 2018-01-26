#!/bin/bash

./encrypt.sh
git add .
echo -n "commit: "
read comment
git commit -m "$comment"
git push
