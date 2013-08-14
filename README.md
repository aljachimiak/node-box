# node-box

This is a quick way to get node.js up and running in a disposable development environment.

This was created on a Mac and should work on any *nix like system. Will it work on Windows?  I don't know, but I'd love to find out.  

## Vagrant
This is a simple vagrant install.  You will need to install [Vagrant](http://docs.vagrantup.com/v2/getting-started/index.html). So install Vagrant and head to the next step.

## Clone this Repo
Yup.  Find a cozy directory and 
````
git clone https://github.com/aljachimiak/node-box
````

## Build your node-box
Run  <code> vagrant up</code>   and watch your node-box get built.  The base box is Ubuntu 32 and the following packages get installed:
  - VIM
    - with js highlighting
    - and line numbers
  -node.js
    - and npm
    - and other dependencies node.js are installed

## Enter your node-box
Just enter <code>vagrant ssh</code> in the directory and you will be greeted by the Ubuntu operating system.

## Start up a quick node.js project
I dropped a Hello World project in the home directory for you.  Run  <code> node server.js</code>  to start it.

## Bask in the node-ness
Crack open a browser on your host machine and navigate to  <code>localhost:6789</code>  to see the Hello World message.  I've pre-configured the node-box to output port :8888 of the node-box to port :6789 on your host machine.

## Improvements?
Submit a pull request and let's make this better.
