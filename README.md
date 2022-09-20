# bdap
Docker files for born digital processing

# About
The bdap container packages and configures tools that will be useful to support born-digital archival processing. This approach will allow us to provide a consistent experience across computing platforms.

The repository also includes a shell script for mounting working storage appropriately (to date works on Mac).

# What's included in the container
- tar
- brunnhilde
- bulk_extractor
- walk_to_dfxml
- clamav
- non-root user
- sudo for limited tasks for non-root user
- various Linux utilties

# Build image
1. Make sure Docker Desktop is installed and running.
2. Run `git clone https://github.ncsu.edu/bjdietz/bdap.git`
3. Run `docker build --build-arg USERNAME=$(whoami) -t focal:bdap .`
4. Wait for image to build.

# Basic usage
1. After you've built the image, you should be able to run a command like `docker run -it --rm focal:bdap /bin/bash` to start the container and enter in a shell. The `--rm` option will remove the container once you've exited it.

# Production usage

1. Run `sed -i '' '2s/^/uuid=1234\n/' .env`, replacing 1234 with your own uuid.
If you're not using SCRC's born-digital working storage, you can uncomment and use the storage variables in the .env file.
2. From same directory where Dockerfile is, in terminal, run `docker-compose up -d`
3. When returned to prompt, run `docker-compose exec bdap bash`
4. When done, in same directory, run `docker-compose stop`

If you're committing your .env changes to your own repository, open the .gitignore file and uncomment .env.
