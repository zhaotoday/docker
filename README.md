### 文章
- [元动力 Docker 教程](https://www.ydlclass.com/doc21xnv/java/fourth/6%E3%80%81docker/)
- [Docker 是怎么实现的？前端怎么用 Docker 做部署？](https://juejin.cn/post/7137621606469222414)
- [给前端的docker 10分钟真 · 快速入门指南](https://juejin.cn/post/7050304120082661407)
- [写给前端的 docker 使用指南](https://juejin.cn/post/7139724794672447518)
- [WEB开发人员应该知道 10 个 Docker 命令](https://juejin.cn/post/7188341548692537402)
- [Docker从入门到干事，看这一篇就够了](https://juejin.cn/post/7026191070924898335)
- [Dockerfile 最佳实践](https://github.com/dunwu/linux-tutorial/blob/master/docs/docker/docker-dockerfile.md)
- [linux-tutorial](https://github.com/dunwu/linux-tutorial)
- [一条龙！CI / CD 、打造小团队前端工程化服务](https://juejin.cn/post/6867861517603438605)
- [通过Docker部署SpringBoot项目](https://www.cnblogs.com/ride0nTime/p/17093456.html)
- [Docker 日常命令大全(完整详细版)](https://blog.csdn.net/BThinker/article/details/123355362)
- [Docker+Nginx部署前后端分离项目(SpringBoot+Vue)的详细教程](https://blog.csdn.net/dgfdhgghd/article/details/127564496)
- [前端全栈之路 - 玩转 Docker (Dockerfile)](https://juejin.cn/post/7160972042757079077)
- [Spring Boot Docker](https://spring.io/guides/topicals/spring-boot-docker/)
- [给自己写的前端初学docker文档](https://juejin.cn/post/7115302609421860900)
- [基于 Docker 来部署 Vue 或 React 前端项目及 Node 后端服务](https://juejin.cn/post/7122708049122459662)
 
### 视频
- [通俗易懂docker迅速入门](https://www.bilibili.com/video/BV1yF411c79o/)
- [Docker+Nginx部署前后端分离项目(SpringBoot+Vue)](https://www.bilibili.com/video/BV1yg411z7gi/)

### 命令
- Docker 服务命令
```
# 启动 Docker 服务
$ systemctl start docker 
# 停止 Docker 服务
$ systemctl stop docker 
# 重启 Docker 服务
$ systemctl restart docker 
# 查看 Docker 服务状态
$ systemctl status docker 
# 设置开机启动 Docker 服务
$ systemctl enable docker
# 导出镜像
$ docker save xxx-image > xxx-image.tar
# 导入进项
$ docker load < xxx-image.tar
```

- Web 项目
```
# 构建镜像
$ docker build -t fzlr-xxx-web-image .
# 停止容器
$ docker stop fzlr-xxx-web-container
# 运行容器
$ docker run -itd -p 8081:80 --restart=always --name fzlr-xxx-web-container fzlr-xxx-web-image
```

- Nestjs 项目
```
# 构建镜像
$ docker build -t fzlr-xxx-api-image .
# 停止容器
$ docker stop fzlr-xxx-api-container
# 运行容器
$ docker run -itd -p 8082:3000 --restart=always --name fzlr-xxx-api-container fzlr-xxx-api-image
```

- SpringBoot 项目
```
# 构建镜像
$ docker build -t fzlr-xxx-api-image .
# 停止容器
$ docker stop fzlr-xxx-api-container
# 运行容器
$ docker run -itd -p 8083:10701 --restart=always -v $PWD/static/:/app/static/ --name fzlr-xxx-api-container fzlr-xxx-api-image
```

### 团队约定
- 镜像命名：{company}-{project}-{type}-image，如：fzlr-gxcs-api-image；
- 容器命名：{company}-{project}-{type}-container，如：fzlr-gxcs-api-container；
- 如果在客户服务上部署，可以把 {company}- 省略，如：gxcs-api-image、gxcs-api-container；
- 映射端口：api：10X01、PC Web：10X02、H5：10X03、admin：10X04，其中 0X 表示具体项目编号，如：01、11；