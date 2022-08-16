#!/usr/bin/env bash

# run it as
# ./changes.sh <hello-react>

$REPO_NAME=$1
npm run build

ssh -i ~/.keys/react_deploy.pem ubuntu@65.0.11.119<<EOF
rm -rf /var/www/html/$REPO_NAME/*
EOF

scp -i ~/.keys/react_deploy.pem -r build/* ubuntu@65.0.11.119:/var/www/html/$REPO_NAME
