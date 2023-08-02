<h1> Olá, Segue instruções de como subir a aplicação.</h1>

<h2> Subindo o redis </h2>

```
docker run --name redis-server -d -p 6379:6379 redis
```

<h2> Subindo a Alicação na porta padrão 5000 </h2>

```
docker container run --link redis-server:redis-server -d -e REDIS_HOST='redis-server' -p 5000:5000 --name giropops-senhas icaroquintella/linuxtips-giropops-senhas:1.0
```

