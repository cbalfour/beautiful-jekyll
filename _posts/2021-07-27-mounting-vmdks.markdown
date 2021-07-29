---
layout: post
title:  "Mounting VMDKs"
date:   2021-07-29 14:44:00 +0200
categories: sysadmin
---
Sometimes it can be useful to get access to the contents of a 
VMWare `vmdk` disk image without starting up the virtual 
machine. For example, getting some files on a archived VM, or 
from a backup.

On Debian/Ubuntu, you need the package `libguestfs-tools`
 installed.

To see what filesystems are in the `.vmdk` use `virt-filesystems` 
like this:

```console
foo@bar:~$ virt-filesystems -a vm_0-flat.vmdk
/dev/sda1
/dev/vm-vg/root
```

To mount the filesystem use `guestmount` like this:

```console
foo@bar:~$ guestmount -a vm_0.flat.vmdk -m /dev/vm-vg/root --ro /mnt
```

