# Why Ansible
- Comparing to cloud-init or Custom Data that runs during VM first bootup, ansible-playbook can run many times on demand, and the result would be idempotent
- Using Ansible would be more flexiable if you would like to change the configuration for testing.
- Although we use Terraform to generate ansible inventory and playbook files, it's expected that you run ansible-playbook manually, as although terraform would run ansible-playbook as external command, it will only run once, it won't be aware of the changes to the out of band changes to inventory or playbook files.

# Ansible requirement
- This repo will generate Ansible Playbook YAML files.
- Ansible use SSH to communicate with target device, compare settings in Playbook YAML with target device setting, and makes idempotent changes on target device.
- Ansible is executed from the control node—for example, where a user runs the ansible-playbook command. 
- Managed nodes are the devices being automated—for example, a Ubuntu or Microsoft Windows server.
- Control node requires python to be installed
- Control node is the where terraform will be running
- Follow https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html to install ansible to control node
- Eg: ```python3 -m pip install --user ansible``` to install the full Ansible package for the current user:
- Following warning would be observed:
    - WARNING: The script ansible-community is installed in '/Users/<username>/.local/bin' which is not on PATH.
- Add following to your ~/.bashrc or ~/.zshrc
    - ```export PATH=/Users/<username>/.local/bin:$PATH```
- run ```source ~/.bashrc``` or ```source ~/.zshrc```
- run ```ansible-playbook --version``` to validate ansible has been installed