# Dev Container Templates

Collection of ready-to-use development container templates for various tech stacks.

## Available Templates

- **dev-environment**: Ubuntu 24.04 with Volta, Pyenv, Go, Rust, Powerlevel10k, and essential dev tools

## Quick Setup

From your project directory, run:

```bash
curl -fsSL https://raw.githubusercontent.com/akstspace/devcontainer-templates/main/add-environment.sh | bash -s <template-name>
```

**Example:**
```bash
curl -fsSL https://raw.githubusercontent.com/akstspace/devcontainer-templates/main/add-environment.sh | bash -s dev-environment
```

**To see all available templates:**
```bash
curl -fsSL https://raw.githubusercontent.com/akstspace/devcontainer-templates/main/add-environment.sh | bash
```

### Manual Setup

Alternatively, clone the repository and copy the template:

```bash
git clone https://github.com/akstspace/devcontainer-templates.git
cp -r devcontainer-templates/dev-environment /path/to/your/project/.devcontainer
```

## Getting Started

1. Run the setup script from your project directory
2. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) VS Code extension
3. Open your project in VS Code
4. Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Linux/Windows)
5. Select **"Dev Containers: Reopen in Container"**
6. VS Code will build and start your development container
