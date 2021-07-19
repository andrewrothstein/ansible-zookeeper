andrewrothstein.zookeeper
=========================
![Build Status](https://github.com/andrewrothstein/ansible-zookeeper/actions/workflows/build.yml/badge.svg)

Installs [Zookeeper](http://zookeeper.apache.org/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.zookeeper
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
