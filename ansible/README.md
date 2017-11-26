# Ansible Role: Docker

An Ansible Role that installs [Docker](https://www.docker.com) on Linux.

## Requirements

None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):
| Variable| Default| Description | Required |
|:------------------------------|:---------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------:|
|docker_edition|ce|'ce' (Community Edition) or 'ee' (Enterprise Edition).|   Yes    |
|docker_package_state|present|Set the state of docker to absent or present|   Yes    |
|docker_install_compose|true|Chose wheter to install Docker-compose or not|   Yes    |
|docker_compose_version|1.16.1|Dokcer-compose version to install|   Yes    |
|docker_yum_repo_enable_edge|0|Enable (1) or Disable (0) Docker Edge repo|   Yes    |
|docker_yum_repo_enable_test|0|Enable (1) or Disable (0) Docker test repo|   Yes    |

## Dependencies

None.

## Example Playbook

```yaml
- hosts: all
  roles:
    - docker
```
