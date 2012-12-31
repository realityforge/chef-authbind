Description
===========

[![Build Status](https://secure.travis-ci.org/realityforge/chef-authbind.png?branch=master)](http://travis-ci.org/realityforge/chef-authbind)

Install the authbind tool to facilitate launching applications on privileged ports. Also provide several resource definitions for executing a command under authbind.

Requirements
============

Platform
--------

* Debian, Ubuntu

Recipes
=======

default
-------

Include the default recipe in a run list, to get authbind installed.

Usage
=====

Simply include the `authbind` recipe to get authbind installed and use the providers to manage permission binding.

authbind_port resource
----------------------

Allow the glassfish user to bind to port 80.

    authbind_port "AuthBind GlassFish Port 80" do
        port 80
        user 'glassfish'
    end

authbind_addr resource
----------------------

Allow the glassfish user to bind to 10.2.3.4, port 80.

    authbind_addr "AuthBind GlassFish 10.2.3.4, Port 80" do
        addr '10.2.3.4'
        port 80
        user 'glassfish'
    end
