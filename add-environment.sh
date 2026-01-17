#!/bin/bash

# Add Environment Script
# Clones and copies a dev environment template to your project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_error() {
  echo -e "${RED}✗${NC} $1"
}

print_info() {
  echo -e "${GREEN}✓${NC} $1"
}

print_header() {
  echo -e "${BLUE}=>${NC} $1"
}

# Check if .devcontainer already exists
if [ -d ".devcontainer" ]; then
  print_error ".devcontainer directory already exists"
  exit 1
fi

# Clone the repository to a temporary directory
TEMP_DIR=$(mktemp -d)

# Ensure cleanup happens on exit
cleanup() {
  if [ -d "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
  fi
}
trap cleanup EXIT

print_header "Cloning devcontainer-templates repository..."
git clone --depth=1 https://github.com/akstspace/devcontainer-templates.git "$TEMP_DIR" 2>/dev/null

# Find all available templates
TEMPLATES=()
for dir in "$TEMP_DIR"/*/; do
  if [ -f "$dir/devcontainer.json" ]; then
    template_name=$(basename "$dir")
    TEMPLATES+=("$template_name")
  fi
done

if [ ${#TEMPLATES[@]} -eq 0 ]; then
  print_error "No templates found"
  exit 1
fi

# Get template name from argument or show available templates
if [ -z "$1" ]; then
  echo ""
  print_header "Available templates:"
  for template in "${TEMPLATES[@]}"; do
    echo "  - $template"
  done
  echo ""
  echo "Usage: $0 <template-name>"
  echo "Example: curl -fsSL https://raw.githubusercontent.com/akstspace/devcontainer-templates/main/add-environment.sh | bash -s dev-environment"
  exit 1
fi

TEMPLATE_NAME="$1"

# Check if template exists
if [ ! -d "$TEMP_DIR/$TEMPLATE_NAME" ]; then
  print_error "Template '$TEMPLATE_NAME' not found"
  echo ""
  echo "Available templates:"
  for template in "${TEMPLATES[@]}"; do
    echo "  - $template"
  done
  exit 1
fi

print_info "Selected template: ${BLUE}$TEMPLATE_NAME${NC}"

# Copy template contents to .devcontainer
echo "Setting up .devcontainer..."
cp -r "$TEMP_DIR/$TEMPLATE_NAME" ".devcontainer"

echo ""
print_info "Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Install the 'Dev Containers' extension in VS Code"
echo "  2. Press Cmd+Shift+P and select 'Dev Containers: Reopen in Container'"
