#!/bin/bash
cd $(dirname "$0")
source ../test-utils/test-utils.sh

# Template specific tests
check "node-exists" which node
check "node-version" node --version
check "npm-exists" which npm
check "npm-version" npm --version
check "git-exists" which git

# Report result
reportResults
