demo_e2e_api_001


#DEMO_E2E_API_001

Proyecto semilla para e2e y apis

## Getting Started
Estas instrucciones son para obtener una copia del proyecto y poder correrlo en un ambiente local para propósitos de testing, Ver Deployment para conocer el cómo desplegar el proyecto.`

### Prerequisites
Para ejecución en local:
- Ruby 2.3.0
- RVM
- Firefox 
- Chrome

Para ejecución con containers:
- Docker 

Para RVM:
```sh
$ \curl -sSL https://get.rvm.io | bash
```

Para Ruby:
```sh
$ rvm install 2.3.0
```

Crear Gemset:
```sh
$ rvm gemset create demo
$ rvm use 2.3.0@demo
```

Para instalar las gemas 
```sh
$ cd demo_e2e_api_001
$ rvm use 2.3.0@demo
$ gem install bundler
$ gem install bundle pack
```


## Para iniciar browser y drivers sobre un Container Zalenium
```sh
$ docker pull elgalu/selenium
$ docker pull dosel/zalenium
$ docker run --rm -ti --name zalenium -p 4444:4444 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp/videos:/home/seluser/videos \
    --privileged dosel/zalenium start
```

### Enlaces para de la consola de Zalenium 

- [http://localhost:4444/wd/hub](http://localhost:4444/wd/hub)
- [http://localhost:4444/grid/admin/live](http://localhost:4444/grid/admin/live)
- [http://localhost:4444/dashboard/#](http://localhost:4444/dashboard/#)



## Ejecutando tests por consola

```sh
$ cd demo_e2e_api_001
$ cucumber -p default --tags @e2e
```
## Built With

* [Selenium](http://www.seleniumhq.org/) - The web framework used for automates browsers
* [Ruby](https://maven.apache.org/) - Used to make the scripts
* [Docker](https://www.docker.com/) - Used to make Containers
* [Zalenium](https://github.com/zalando/zalenium) -Used remote access to Selenium-chrome and Firefox

## Contributing

Please read [CONTRIBUTING.md](https://github.com/myteocafe/falcom_base/blob/master/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [Github](https://github.com/) for versioning. For the versions available, see the [tags on this repository](https://github.com/myteocafe/tags). 

## Authors

* **Cliff La Torre** - *Initial work* - [Ruby_Cucumber](https://github.com/myteocafe/falcom_base)

See also the list of [contributors](https://github.com/myteocafe/falcom_base/contributors) who participated in this project.

## License

This 