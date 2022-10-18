# bdap
Docker files for born digital processing

# About
The bdap container packages and configures tools that will be useful to support born-digital archival processing. This approach will allow us to provide a consistent experience across computing platforms.

# What's included in the container
- tar
- brunnhilde
- bulk_extractor
- walk_to_dfxml
- clamav
- non-root user
- sudo for limited tasks for non-root user
- various Linux utilties

# Using with Docker on Mac
## Build image
1. Make sure Docker Desktop is installed and running.
2. Run `git clone https://github.ncsu.edu/bjdietz/bdap.git && cd bdap`
3. Run `docker build --build-arg USERNAME=$(whoami) -t focal:bdap .`
If you're on a Mac with an M1 chip, you may also need to use the `--platform linux/x86_64` flag.
4. Wait for image to build.

## Basic usage
1. After you've built the image, you should be able to run a command like `docker run -it --rm focal:bdap /bin/bash` to start the container and enter in a shell. The `--rm` option will remove the container once you've exited it.

## Production usage
1. Run `sed -i '' '2s/^/uuid=1234\n/' .env`, replacing 1234 with your own uuid.
If you're not using SCRC's born-digital working storage, you can uncomment and use the storage variables in the .env file.
2. From same directory where Dockerfile is, in terminal, run `docker-compose up -d`
3. When returned to prompt, run `docker-compose exec bdap bash`
4. When done, in same directory, run `docker-compose stop`

# Using with podman on RHEL8
## Build image
1. podman is already installed on RHEL8.
2. Run `git clone https://github.ncsu.edu/bjdietz/bdap.git && cd bdap`
3. Run `sudo podman build --build-arg USERNAME=$(whoami) --network host -t focal:bdap .` [verify]

## Basic usage
1. `sudo podman run -v /home/bjdietz/born_digital:/home/born_digital --network host --rm -it localhost/ubu:bdap /bin/bash`

## Production usage
coming soon

# Using with Docker on Windows
## Build image
1. Make sure Docker Desktop is installed and running.
2. Run `git clone https://github.ncsu.edu/bjdietz/bdap.git && cd bdap`
3. If you're using Powershell, run `docker build --build-arg USERNAME=$([System.Environment]::UserName) -t focal:bdap .`
4. Wait for image to build.

## Basic usage
1. After you've built the image, you should be able to run a command like `docker run -it --rm focal:bdap /bin/bash` to start the container and enter in a shell. The `--rm` option will remove the container once you've exited it.

## Production usage
1. Create a volume pointing to your NFS storage: `docker volume create --driver local --opt type=nfs --opt o=addr=lib-scrc-files.lib.ncsu.edu,nfsvers=4,rw,soft,nolock --opt device=:/archives/working/born_digital born-digital`
2. Run ``"`nuuid=1234" |Add-Content -Path .env``, replacing 1234 with your UUID.
If you're not using SCRC's born-digital working storage, you can uncomment and use the storage variables in the .env file.
3. From same directory where Dockerfile is, run `docker-compose -f windows.yml up -d`
4. When returned to prompt, run `docker-compose exec bdap bash`
5. When done, in same directory, run `docker-compose stop`

If you're committing your .env changes to your own repository, open the .gitignore file and uncomment .env.
