#!/bin/bash

# This function wraps execution of tests and標記the success/failure
check() {
    LABEL=$1
    shift
    echo -e "\n🧪 Testing: $LABEL"
    if "$@"; then 
        echo "✅ Passed!"
        return 0
    else
        echo "❌ Failed: $LABEL"
        FAILED+=("$LABEL")
        return 1
    fi
}

# Initialize failed tests array
FAILED=()

# Report the results at the end
reportResults() {
    echo -e "\n============================================"
    echo "Test Results"
    echo "============================================"
    if [ ${#FAILED[@]} -ne 0 ]; then
        echo "❌ Some tests failed:"
        printf '%s\n' "${FAILED[@]}"
        exit 1
    else
        echo "✅ All tests passed!"
        exit 0
    fi
}
