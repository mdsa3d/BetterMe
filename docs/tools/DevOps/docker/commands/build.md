# **docker build**

To ensure that your build is completely rebuild, including checking the base image for updates, use the following options when building:

`--no-cache` - This will force rebuilding of layers already available

`--pull` - This will trigger a pull of the base image referenced using FROM ensuring you got the latest version.

The full command will therefore look like this:
```
docker build --pull --no-cache --tag myimage:version .
```
Same options are available for docker-compose:
```
docker-compose build --no-cache --pull
```

**Note** that if your docker-compose file references an image, the --pull option will not actually pull the image if there is one already.

To force docker-compose to re-pull this, you can run:
```
docker-compose pull
```


----
## **Cache**

You can manage the builder cache with 
```
docker builder
```

To clean all the cache with no prompt: 
```
docker builder prune -af
```

---
## **Docker-Compose**

When working with docker-compose, user can force to recreate all the containers while starting the service.
```
docker-compose up -d --force-recreate 
```


## **References**
- [How to force docker for clean build of an image](https://stackoverflow.com/questions/35594987/how-to-force-docker-for-a-clean-build-of-an-image)