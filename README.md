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
1. Make sure Docker Desktop is installed and running
2. Make a directory for container-related files on your computer. 
3. Download Dockerfile, docker-compose.yml, and start_container.sh into that directory
4. Open Dockerfile replace "tuffy" in line 8 with your unityID. Save and close file. 
5. In terminal, change to the directory containing the 3 files you downloaded.
6. run `docker build -t focal:bdap .`
7. Wait for image to build

# Basic usage
1. After you've built the image, you should be able to run a command like `docker run -it --rm focal:bdap /bin/bash` to start the container and enter in a shell. The `--rm` option will remove the container once you've exited it.

# Production usage
This section assumes you have access to the SCRC's born-digital working storage.

1. From same directory where Dockerfile is, in terminal, run `start_container.sh`.
2. When returned to prompt, run `docker-compose exec bdap bash`
3. When done, in same directory, run `docker-compose stop`
