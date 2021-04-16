git diff --name-only --diff-filter=d origin/"$TARGET_BRANCH"..origin/"${SOURCE_BRANCH#"refs/heads/"}" | paste -s -d "," >> diff-file.csv
