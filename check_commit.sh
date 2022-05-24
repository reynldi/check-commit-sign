#!/bin/bash

check_commit="$(git verify-commit $(git rev-parse HEAD) --verbose)"

if [ -z "$check_commit" ];
then
  echo "This commit is not signed. Please read our Contribution Guideline"
  exit 1
else
  echo "Signed Well"
  exit 0
fi
