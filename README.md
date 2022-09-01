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
2. Make directory for files
3. Download files into that directory
4. Open Dockerfile and add your user name and ID
5. In terminal, cd to that directory
6. run `docker build -t focal:bdap .`
7. Wait for image to build

# Starting container
1. From same directory where Dockerfile is, in terminal, run `start_container.sh`.
2. When returned to prompt, run `docker-compose exec bdap bash`
3. When done, in same directory, run `docker-compose stop`
