# Dev Container Templates

A collection of dev container templates to help you quickly set up containerized development environments.

## 📦 Available Templates

This repository provides the following dev container templates:

### Node.js
A complete Node.js development environment with:
- Multiple Node.js versions (20, 18, 16)
- npm package manager
- Optional pnpm support
- ESLint and Prettier pre-configured
- Common development utilities

### Python
A complete Python development environment with:
- Multiple Python versions (3.12, 3.11, 3.10)
- pip package installer
- Optional Poetry support
- Python language server and linting tools
- Ruff for fast linting and formatting

## 🚀 Usage

### Using with VS Code

1. Install the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
2. Open your project in VS Code
3. Press `F1` and select "Dev Containers: Add Dev Container Configuration Files..."
4. Choose "Show All Definitions..." then search for templates from this repository
5. Select the template you want to use
6. Customize options as needed
7. Reopen in container

### Using with GitHub Codespaces

1. Navigate to your repository on GitHub
2. Click "Code" → "Codespaces" → "New codespace"
3. Configure the dev container using one of these templates
4. Start coding!

### Using the Dev Container CLI

You can apply a template using the [@devcontainers/cli](https://github.com/devcontainers/cli):

```bash
npm install -g @devcontainers/cli

# Apply a template to your project
devcontainer templates apply \
  --workspace-folder . \
  --template-id ghcr.io/akstspace/devcontainer-templates/nodejs:latest \
  --template-args '{ "nodeVersion": "20", "installPnpm": true }'
```

## 📁 Repository Structure

```
.
├── src/                          # Template definitions
│   ├── nodejs/                   # Node.js template
│   │   ├── devcontainer-template.json
│   │   ├── .devcontainer/
│   │   │   └── devcontainer.json
│   │   └── NOTES.md
│   └── python/                   # Python template
│       ├── devcontainer-template.json
│       ├── .devcontainer/
│       │   └── devcontainer.json
│       └── NOTES.md
├── test/                         # Test scripts
│   ├── nodejs/
│   │   └── test.sh
│   ├── python/
│   │   └── test.sh
│   └── test-utils/
│       └── test-utils.sh
├── .github/workflows/            # CI/CD workflows
│   ├── release.yaml             # Publishing workflow
│   └── test-pr.yaml             # Testing workflow
└── README.md
```

## 🛠️ Contributing

We welcome contributions! To add a new template:

1. Create a new directory under `src/` with your template name
2. Add the required files:
   - `devcontainer-template.json` - Template metadata
   - `.devcontainer/devcontainer.json` - Dev container configuration
   - `NOTES.md` - Documentation (optional but recommended)
3. Create a test script in `test/<template-name>/test.sh`
4. Test your template locally
5. Submit a pull request

### Local Testing

To test a template locally:

```bash
# Install the devcontainer CLI
npm install -g @devcontainers/cli

# Build the container
devcontainer build --workspace-folder ./src/<template-name>/.devcontainer

# Test the container
devcontainer up --workspace-folder ./src/<template-name>/.devcontainer
devcontainer exec --workspace-folder ./src/<template-name>/.devcontainer bash
```

## 📚 Resources

- [Dev Container Specification](https://containers.dev/)
- [Dev Container Templates](https://containers.dev/templates)
- [VS Code Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers)
- [GitHub Codespaces](https://github.com/features/codespaces)
- [Dev Container CLI](https://github.com/devcontainers/cli)

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

Copyright (c) 2026 Akshay Thalinja