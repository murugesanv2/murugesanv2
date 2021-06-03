#!/bin/bash

# Written by M. Jamal Green - Team Pegasus 5/21/21

# Until the harness workflow is complete use this script as quick work around to run terraform init in your local
# repo. Once new Harness CI/CD workflow is complete, this will no longer be necessary

# due to the .gitignore of the repo directory, every time you switch branches you must remove the .terraform directory
# and run this script again

test -d $PWD/.terraform && rm -rf $PWD/.terraform

# This command is copied from jenkins. The profile is the Terrafrom management role which you need to have configured
# in your AWS .config and credentials file.
terraform init -backend-config "profile=hc-mgmt-tf" -backend-config "bucket=hc-tf-state-bucket" \
-backend-config "key=hc-tf-aws-es-jaeger/test.tfstate" -backend-config "dynamodb_table=tf-state-lock" \
-backend-config "encrypt=true" -backend-config "skip_metadata_api_check=true"