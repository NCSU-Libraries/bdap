# bdap
Docker files for born digital processing

## Instructions
1. Install Docker Desktop
2. Make directory for files
3. Download files into that directory
4. Open Dockerfile and add your user name and ID
5. In terminal, cd to that directory
6. run `docker build -t foc:bdap .`
7. Wait for image to build
8. When ready to use, open docker-compose.yml and update user name and paths
9. In terminal, in directory containing files run `docker-compose up -`
10. When returned to prompt, run `docker-compose exec bdap bash`
11. When done, in same directory, run `docker-compose down`
