# Dev Container Templates

Starter files for dev container templates.

## Available Template

### Node.js & PostgreSQL
Node.js development environment with PostgreSQL database.
- Node.js versions: 22, 20, 18, 16
- PostgreSQL versions: 18, 17, 16, 15, 14
- Includes PostgreSQL client
- Docker Compose setup

## Usage

Copy the `.devcontainer` folder from `src/node-postgres/` to your project root and customize as needed.

## Structure

```
src/node-postgres/
├── devcontainer-template.json
└── .devcontainer/
    ├── devcontainer.json
    ├── docker-compose.yml
    └── Dockerfile
```

## License

MIT License - see [LICENSE](LICENSE) for details.