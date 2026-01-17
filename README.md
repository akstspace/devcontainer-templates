# Dev Container Templates

Starter files for dev container templates.

## Available Templates

### Node.js & PostgreSQL
Node.js development environment with PostgreSQL database.
- Node.js versions: 22, 20, 18, 16
- PostgreSQL versions: 18, 17, 16, 15, 14
- Includes PostgreSQL client
- Docker Compose setup

## Usage

Copy the `.devcontainer` folder from `src/<template-name>/` to your project root and customize as needed.

For example, to use the Node.js & PostgreSQL template:
```bash
cp -r src/node-postgres/.devcontainer /path/to/your/project/
```

## Structure

Each template follows this structure:
```
src/<template-name>/
├── devcontainer-template.json
└── .devcontainer/
    ├── devcontainer.json
    ├── docker-compose.yml (optional)
    └── Dockerfile (optional)
```

## License

MIT License - see [LICENSE](LICENSE) for details.