# ColonyOS Executor Project Template (Go)

This is a devcontainer project template designed to simplify setting up a development environment for building ColonyOS executors in Go.

> **Note:** This template is currently under development and probably still very much in the "works on my computer"-state. It has only been tested om MacOS, as soon as I get some time to spare I will test it on Linux and Windows as well. Once stable, it will be packaged and published as an official devcontainer template.

If you’re new to devcontainers, see the official documentation: [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers).

---

## Why does this exist?

Setting up a development environment for ColonyOS can be complex. It involves running multiple containers, generating cryptographic keys, configuring environment variables, and provisioning a colony using the ColonyOS CLI. This project aims to automate these steps as much as possible, while avoiding common pitfalls such as reusing keys across environments or accidentally committing secrets to source control.

---

## What does it do?

- Runs an initialization container that generates a random database password and cryptographic key pairs for:
  - The ColonyOS server
  - A development colony
  - A development user
  - A development executor
- It then stores generated values in a Docker volume that will be mounted to `/configuration` in the other containers
- After initialization the following containers are launched:
  - A TimescaleDB instance using the generated password
  - A ColonyOS server connected to TimescaleDB, using the generated keys to create a new ColonyOS database
  - A devcontainer with the Go SDK, ColonyOS CLI, and all necessary environment variables pre-configured for interacting with the server




---

## How do I use it?

1. **Install [Docker](https://www.docker.com/).**
2. **Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for VS Code.**
3. **Clone this repository.**
4. **Open the root directory of the repository in VS Code.**
5. **When prompted, click “Reopen in Container” to launch the devcontainer.**
6. **Verify the setup by running the following command in the integrated terminal:**
   ```
   colonies server status
   ```
   You should see basic information about the server.

7. **Initialize a new colony and add yourself as a user by running:**
   ```
   ./scripts/create-colony.sh
   ```

You’re now ready to initialize your Go project and start developing!

---
