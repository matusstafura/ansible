## Ansible setup

### Installation

```shell
sudo apt install git ansible cmake software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

### Clone Repo

```shell
git clone https://github.com/matusstafura/ansible
```

### Install Playbooks from profiles directory

```shell
ansible-playbook ${playbook} -u ${user}
```

### Profiles

- individual yaml files in `profiles` directory

## Development

```bash
# builds and runs the minimal testing container
make dev
```
