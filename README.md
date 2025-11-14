# ColonyOS Executor Project Template (Go)

This devcontainer template streamlines the setup of a development environment for building ColonyOS executors in Go.

If you’re new to devcontainers, see the official documentation: [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers).

Setting up a ColonyOS development environment can be complex, involving multiple containers, cryptographic key generation, environment variable configuration, and colony provisioning via the ColonyOS CLI. This template automates these steps and helps prevent common mistakes, such as reusing keys or accidentally committing secrets.

When you start this template, an initialization container automatically generates all necessary configuration values—unless they already exist from a previous launch. These values are stored in a Docker volume, which is mounted at `/configuration` for any containers that need them. Each container’s entrypoint script loads the configuration values into the relevant environment variables.

The entire stack consists of:
- A TimescaleDB instance
- A ColonyOS server instance
- The actual development container with the ColonyOS CLI pre-installed
---