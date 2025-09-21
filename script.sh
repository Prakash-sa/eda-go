#! /bin/bash
systemctl stop docker
e2fsck -fy /gotest/ignite_vfs.ext4
resize2fs /gotest/ignite_vfs.ext4 10G
mount /gotest/ignite_vfs.ext4 /var/lib/docker
systemctl start docker