#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair2.pem ec2-user@13.229.100.42 "source ~/.bashrc; /home/ec2-user/.local/bin/pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
