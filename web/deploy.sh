docker build -t fzlr-xxx-web-image .
# docker stop fzlr-xxx-web-container
docker run -itd -p 8081:80 --restart=always --name fzlr-xxx-web-container fzlr-xxx-web-image