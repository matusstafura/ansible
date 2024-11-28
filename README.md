## Ansible setup

### Install Ansible
```shell
sudo apt install git ansible cmake software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

### Clone Repo
```shell
git clone https://github.com/matusstafura/ansible
```

### Install Playbooks
```shell
ansible-playbook ${playbook}
```

## Development

```bash
make dev
```
