# General Ruby Box

Basic starting point for building Vagrant boxes for lots of projects - anything from
developing static assets to full Rails apps.

## Whats Included

All the following are available, but not necessarily included in the build by default:

* Redis
* NodeJS (w/ option to auto-install GruntJS)
* Nginx or Apache or no web server
* Base box includes ruby `1.9.3`; specify the version you'd like and it'll be the base
* PostgreSQL, and/or Hstore and PostGIS extensions

## Usage

Clone this repository, and open the Vagrantfile `vagrant/Vagrantfile`. At the very top, there
is a hash called `box_settings`, annotated with instructions. Simple declare whatever you
want to use, and then `$: vagrant up`.