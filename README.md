Role Name
=========

My Ansible role for installing "KDE", some of its applications, and other configurations.

DISCLAIMER: this role is built to fit my needs and configurations, and it is not meant to be reusable.

This role is described in this blog post: https://www.lorenzobettini.it/2023/12/my-ansible-role-for-kde/

Requirements
------------

In the playbook's `requirements.yml`:

```yaml
---
roles:
  # Install my own roles from GitHub
  - name: lorenzobettini.my_kde_role
    src: https://github.com/LorenzoBettini/my_kde_role/

collections:
  # Install a collection from Ansible Galaxy.
  - name: community.general
```

Install the requirements using:

```
ansible-galaxy install -r requirements.yml
```

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Example Playbook
----------------

```yaml
    - name: Install KDE
      ansible.builtin.include_role:
        name: lorenzobettini.my_kde_role
```

To avoid the copying of Konsole profiles, e.g., when those are handled as dotfiles with another tool:

```yaml
    - name: Install KDE
      ansible.builtin.include_role:
        name: lorenzobettini.my_kde_role
      vars:
        with_konsole_profiles: false
```

Similarly, to avoid modifying `.ini` files (e.g., `katerc`, `kglobalshortcutsrc`, etc.), use `modify_ini_files: false`.