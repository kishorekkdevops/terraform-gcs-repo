#!/bin/bash
changed_users=()

for tfvars in $(ls users/*.tfvars); do
  if git diff --name-only HEAD~1 | grep -q $tfvars; then
    changed_users+=($(basename $tfvars .tfvars))
  fi
done

echo "${changed_users[@]}"