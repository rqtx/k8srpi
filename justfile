run:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v

runv:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -vvv

tasks tags:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v -t {{ tags }}

skip-tags tags:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v --skip-tags {{ tags }}

join_workers:
    ansible-playbook main.yml --extra-vars "@./vars/vars_file.yml" -kK -v -t "join_workers"

ping:
    ansible all -m ping

facts host:
    ansible {{ host }} -m setup 