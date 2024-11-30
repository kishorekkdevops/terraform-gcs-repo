#!/bin/bash
for tfvars in $(ls users/*.tfvars); do
  user=$(basename $tfvars .tfvars)
  terraform workspace select $user || terraform workspace new $user
  terraform plan -var-file=$tfvars -out=$user.plan
  terraform apply $user.plan
done