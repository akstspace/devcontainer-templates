#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "${SCRIPT_DIR}/../test-utils/test-utils.sh"

# Template specific tests
check "node-exists" which node
check "node-version" node --version
check "npm-exists" which npm
check "npm-version" npm --version
check "git-exists" which git

# Report result
reportResults
