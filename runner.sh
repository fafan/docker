#!/bin/bash

GITHUB_USER=$1
GITHUB_PASS=$2
GITHUB_OWNER=$3
GITHUB_REPO=$4
GITHUB_BRANCH=$5

cd ~ && \
git clone https://$GITHUB_USER:$GITHUB_PASS@github.com/$GITHUB_OWNER/$GITHUB_REPO.git --branch $GITHUB_BRANCH || exit -1

cd $GITHUB_REPO && echo "Setting up composer..." && composer update -v || exit -2

