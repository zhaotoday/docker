docker build -t fzlr-xxx-api-image .
# docker stop fzlr-xxx-api-container
docker run -itd -p 8082:3000 --restart=always --name fzlr-xxx-api-container fzlr-xxx-api-image