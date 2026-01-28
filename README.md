# bdap (born-digital archival processing)

## About
The bdap Docker image packages and configures tools used by the Special Collections Research Center for born-digital archival processing. This approach allows us to provide a consistent experience across computing platforms and workstations.

## What's included in the container
- tar
- brunnhilde
- bulk_extractor
- walk_to_dfxml
- clamav
- non-root user
- sudo for limited tasks for non-root user
- various Linux utilties

## Instructions
Refer to our [wiki](../../wiki) for instructions on building and using the image on Mac, Windows, and RHEL Linux.

## Repository Structure

- `Dockerfile_ubu22_amd`: Instructions for building Ubuntu 22.04 image using AMD64/Intel architecture
- `Dockerfile_ubu22_arm`: Instructions for building Ubuntu 22.04 image using ARM/Apple Silicon architecture
- `docker-compose.yml`: Configuration file for running container on Mac/Linux
- `windows.yml`: Configuration for Windows
- `update_env_ubu.sh`: Shell script to automate environment updates when starting container
- `.env`: Where variables (username and shared volume paths) used by docker-compose.yml are defined
- `services`: Contains Dockerfiles for building lightweight images, each containing one tool (not used by SCRC in production)
- `deprecated`: Legacy files for Fedora 36 and Ubuntu 20 

## Deprecations
### Fedora 36-based image (end of life)
- We had selected Fedora because, at the time we were preparing the ARM image file, it would not build using Ubuntu
- We had been using 36 because it is the only version of Fedora that bulk_extractor installation scripts were written for
### Ubuntu 20 
- ARM and AMD files both build on Ubuntu 22 so we are deprecating 20
