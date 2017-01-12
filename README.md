# Update APP skeleton for CakePHP

![Baked With CakePHP](http://static.jdmay.me/Baked-with-CakePHP-small.png)
[![License](https://img.shields.io/packagist/l/cakephp/app.svg?style=flat-square)](https://packagist.org/packages/cakephp/app)

A skeleton for creating applications with [CakePHP](http://cakephp.org) 3.x.

The framework source code can be found here: [cakephp/cakephp](https://github.com/cakephp/cakephp).

This is updated cakephp skeleton application to make easier setup process for ca plugins.

## Installation

1. Download [Composer](http://getcomposer.org/doc/00-intro.md) or update `composer self-update`.
2. Run `php composer.phar create-project --prefer-dist jdmaymeow/app [app_name]`.

If Composer is installed globally, run
```bash
composer create-project --prefer-dist jdmaymeow/app [app_name]
```

You should now be able to visit the path to where you installed the app and see the default home page.

## Configuration

Read and edit `config/app.php` and setup the 'Datasources' and any other
configuration relevant for your application.

## Code Advent Configuration file

Code Advent (CA) plugins will use this file to read some configurations. You can edit this file at `config/codeadvent.json`.

## Docker

```bash
docker create --name my-app --privileged -p 80 \
-e MYSQL_HOST=localhost \
-e MYSQL_USER=user \
-e MYSQL_PASS=pass \
-e MYSQL_DB_NAME=database \
-v /data:/var/www/html/webroot/data jdmaymeow/app
```
