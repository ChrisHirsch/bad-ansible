run:
	ansible-playbook main.yml -e "GUID=${GUID}"  -i ./hosts.c9b6

check:
	ansible-playbook main.yml -e "GUID=${GUID}"  -i ./hosts.c9b6 --check

test:
	curl http://frontend1.${GUID}.example.opentlc.com

clean:
	ansible-playbook cleanup.yml -e "GUID=${GUID}"  -i ./hosts.c9b6 
