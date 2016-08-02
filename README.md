# ansible-role-pgbouncer

Ansible role that installs and configures pgbouncer.

# Variables

- `pgbouncer_config_path`
- `pgbouncer_config`

# Example playbook

```
---

- name: default
  hosts: localhost
  vars:
    pgbouncer_config:
      - section: databases
        option: foo
        value: dbname=foo host=localhost port=5432 user=foo password=foo
  roles:
    - zoomer.pgbouncer
```

# License

BSD

# Author information

DevOps at [ZoomerDelivery](http://www.zoomerdelivery.com)
