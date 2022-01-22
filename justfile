run:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v

tasks tags:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v -t {{ tags }}

ping:
    ansible all -m ping