# bdap
Docker files for born digital processing

## Docker instructions
1. Make sure Docker Desktop is installed and running
2. Make directory for files
3. Download files into that directory
4. Open Dockerfile and add your user name and ID
5. In terminal, cd to that directory
6. run `docker build -t foc:bdap .`
7. Wait for image to build
8. When ready to use, open docker-compose.yml
9. In termninal run `id` to get your id number; update user name, ID, and paths in compose file
10. In terminal, in directory containing files run `docker-compose up -d`
11. When returned to prompt, run `docker-compose exec bdap bash`
12. When done, in same directory, run `docker-compose down`
