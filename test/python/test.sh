#!/bin/bash
cd $(dirname "$0")
source ../test-utils/test-utils.sh

# Template specific tests
check "python-exists" which python
check "python-version" python --version
check "pip-exists" which pip
check "pip-version" pip --version
check "git-exists" which git

# Report result
reportResults
