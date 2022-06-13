# Develop Wordpress locally using Docker

The installation tool kit, provided here, include:

  - Nginx web server
  - MariaDB/MySQL used for Wordpress database
  - phpMyAdmin interface to connect to your MySQL database
  - WP-Cli: Wordpress Command Line Interface
  - Makefile directives for automatization.
  - Shortcut for SSH to Wordpress and WP-CLI Containers

You can automatically deploy a local docker wordpress site in 5 minutes
using the following commands:

``` bash
# 1. Download the github repo inside your project code eg. project1
mkdir mywp
cd mywp
git clone https://github.com/tsarouxas/dockeraki .
# 2. Edit the .env file
#eg. code .env
# 3. Build and start installation
make autoinstall
```

Visit your site at <http://localhost> 
Database via phpMyAdmin at <http://localhost:8080>.

Default identification for your wordpress website admin:

  - `Username: wp` and
  - `Password: wp`

Default identification for the phpMyAdmin interface:

  - `Username: wp` and
  - `Password: wp`

**Useful set of commands to know**:

``` bash
# Stop and remove containers
make start
# Rebuild and restart docker containers after updating docker-compose.yml
make restart

#stop the Website container
make stop

# Reset and delete everything
make clean
```

## References
https://github.com/mjstealey/wordpress-nginx-docker
https://docs.docker.com/compose/wordpress/
https://github.com/LiamKarlMitchell/wordpress-docker-compose
https://github.com/kassambara/wordpress-docker-compose