# bdap
Docker files for born digital processing

## Docker instructions
1. Make sure Docker Desktop is installed and running
2. Make directory for files
3. Download files into that directory
4. Open Dockerfile and add your user name and ID
5. In terminal, cd to that directory
6. run `docker build -t focal:bdap .`
7. Wait for image to build
8. In terminal, in directory containing files, run start_container.sh.
9. When returned to prompt, run `docker-compose exec bdap bash`
10. When done, in same directory, run `docker-compose stop`
