#!/bin/bash
openstack overcloud deploy --templates /home/stack/templates/openstack-tripleo-heat-templates/ \
-e ~/templates/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e ~/templates/openstack-tripleo-heat-templates/environments/neutron-ovs-dvr.yaml \
-e ~/templates/node-info.yaml \
-e ~/templates/network-environment.yaml \
-e ~/templates/storage-environment.yaml \
-e ~/templates/timezone-environment.yaml \
-e ~/templates/firstboot-environment.yaml \
--libvirt-type qemu $1 | tee ~/openstack-deployment.log
