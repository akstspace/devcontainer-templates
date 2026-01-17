#!/bin/bash

# This function wraps execution of tests and marks the success/failure
check() {
    LABEL=$1
    shift
    echo -e "\n🧪 Testing: $LABEL"
    
    # Capture both stdout and stderr
    OUTPUT=$(mktemp)
    if "$@" > "$OUTPUT" 2>&1; then 
        echo "✅ Passed!"
        cat "$OUTPUT"
        rm -f "$OUTPUT"
        return 0
    else
        echo "❌ Failed: $LABEL"
        echo "Error output:"
        cat "$OUTPUT"
        rm -f "$OUTPUT"
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
