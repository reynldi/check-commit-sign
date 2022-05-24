# Check Commit Sign
Simple Script to Check is Commit Signed / Not-Signed ( https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work )

This script will be useful if we integrate with our CI/CD Pipeline like GitLab CI

## How to run
```
./check-commit.sh
```

## Sample GitLab Job
```
contrib-check:
  stage: prepare
  rules:
    - if: '$CI_PIPELINE_SOURCE == "merge_request_event"'
      allow_failure: true
  script:
    - ./.gitlab/ci/scripts/check_commit.sh
```

The job will run only when we open Merge Request
