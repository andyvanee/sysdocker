Docker images for local development
=======================================================================

These images are for local development on my machine. This is software
that I would have previously installed via homebrew/etc, but would like
to run in containers from now on.

Some rules I'm loosely following are:

- Use official repos when available
- Store data in a volume (configured by DOCKER_DATA_DIR environment variable) 
- Expose the default ports of their respective service
- Run on the default network (bridge mode)
- Use default password or no password where appropriate

To use this:

1. Add a data directory in your shell profile 'export DOCKER_DATA_DIR=/path/to/data'
2. Copy/paste or source the file `profile.sh` in your shell profile to setup aliases
3. `docker-compose up -d` to start everything
