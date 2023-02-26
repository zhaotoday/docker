docker build -t fzlr-xxx-api-image .
# docker stop fzlr-xxx-api-container
docker run -itd -p 8083:10701 --restart=always -v $PWD/static/:/app/static/ --name fzlr-xxx-api-container fzlr-xxx-api-image