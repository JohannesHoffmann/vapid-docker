# Vapid CMS Docker Image

An image that creates a vapid project for you and starts the service. If you mount your existing project it just starts the webserver.

## vapid

* [Website](https://www.vapid.com/)
* [Github](https://github.com/vapid)

## run the image

````
docker run -p 3000:3000 -v /path/to/project:/usr/src/app joehoppe/vapid
````

