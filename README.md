# Description

[![Build Status](https://secure.travis-ci.org/realityforge/chef-authbind.png?branch=master)](http://travis-ci.org/realityforge/chef-authbind)

Install the authbind tool to facilitate launching applications on privileged ports. Also provide several resource definitions for executing a command under authbind.

# Requirements

## Platform:

* Ubuntu
* Debian

## Cookbooks:

* cutlery

# Attributes

*No attributes defined*

# Recipes

* [authbind::default](#authbinddefault) - Install authbind.

## authbind::default

Install authbind. Required for the LWRPs.

# Resources

* [authbind_addr](#authbind_addr) - Enable or disable authbind for a particular port on a particular interface.
* [authbind_port](#authbind_port) - Enable or disable authbind for a particular port.

## authbind_addr

Enable or disable authbind for a particular port on a particular interface.

### Actions

- add: Enable authbind. Default action.
- remove: Disable authbind.

### Attribute Parameters

- addr:
- port:
- user:
- group:  Defaults to <code>nil</code>.

### Examples

Allow the glassfish user to bind to 10.2.3.4, port 80.

    authbind_addr "AuthBind GlassFish 10.2.3.4, Port 80" do
        addr '10.2.3.4'
        port 80
        user 'glassfish'
    end

## authbind_port

Enable or disable authbind for a particular port.

### Actions

- add: Enable authbind for a port. Default action.
- remove: Disable authbind for a port.

### Attribute Parameters

- port:
- user:
- group:  Defaults to <code>nil</code>.

### Examples

Allow the glassfish user to bind to port 80.

    authbind_port "AuthBind GlassFish Port 80" do
        port 80
        user 'glassfish'
    end

# License and Maintainer

Maintainer:: Peter Donald (<peter@realityforge.org>)

License:: Apache 2.0
