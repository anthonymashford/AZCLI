#!/bin/bash
RG=emea-core-south-uk-anf
ACC=core-south-uk
POOL=flex-testing
POOL_GROW=6
VOL1=vol1
VOL_GROW=200
THROUGHPUT_GROW=32
VOL1_SNAP_NAME=vol1_snap
VOL1_SNAP_LOCATION=uksouth

# Create Volume Snapshot
az netappfiles snapshot create \ 
    -g $RG \
    --account-name $ACC \
    --pool-name $POOL \
    --volume-name $VOL1 \
    --name $VOL1_SNAP_NAME \
    -l $VOL1_SNAP_LOCATION

