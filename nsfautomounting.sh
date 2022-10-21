#! /bin/sh
#NFS Auto-Mount Script

name=$(df -h | grep /nfs/shared)

if [[ -z "$name" ]];
then
	mount -t nfs 192.168.35:/nfs/shared /nfs/shared
	echo "NFS not found mounted, remounted"
	
else
	echo "NFS found mounted"
fi