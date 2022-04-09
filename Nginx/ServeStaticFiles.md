# Serve Static Files through Docker
## Django -> Nginx 
To serve static files from your application through nginx, you have to link the static folder to the static folder inside nginx docker

```
ln -s /var/www/Foo WebStorm_Projects
```

docker-compose.yml
```yml
    volumes:
      - ./backend/media:/media
      - ./backend/static:/static
```
default.conf
```bash
  location /static/ {
      alias /static/;
  }
```