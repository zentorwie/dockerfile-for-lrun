# dockerfile-for-lrun
A Dockerfile to build Docker image to run [lrun](https://github.com/quark-zju/lrun)

## 依赖
Docker

## 构建
将Dockerfile复制到一个单独的文件夹，然后在该文件夹下运行
`docker build -t lrun:v1 .`

## 使用

```
docker run -t --privileged --rm lrun:v1 su - judge -c "{想要在容器里运行的命令}"
```

比如:

```
docker run -t --privileged --rm lrun:v1 su - judge -c "lrun --max-cpu-time 1.5 bash -c ':(){ :;};:' 3>&1"
```

