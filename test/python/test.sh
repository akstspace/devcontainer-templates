#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
source "${SCRIPT_DIR}/../test-utils/test-utils.sh"

# Template specific tests
check "python-exists" which python
check "python-version" python --version
check "pip-exists" which pip
check "pip-version" pip --version
check "git-exists" which git

# Report result
reportResults
