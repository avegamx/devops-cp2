
##Provision nfs server
ansible-playbook -vv playbooks/provision_nfs-server.yml

##Provision k8 on master and worker
ansible-playbook -vv playbooks/provision_k8.yml

##Provision prometheus on master node
ansible-playbook -vv playbooks/provision_app.yml
