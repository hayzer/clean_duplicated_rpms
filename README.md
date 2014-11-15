# Cleanup duplicated RPMs

### Case: 
If one for example stopped the periodical *yum update* in the middle, the result might be duplicated RPMs installed on the system. Both new and old version of the same RPM package.
In such a case the output of the bellow command:

```bash
 # yum check
```

Might be similiar to the follow

```bash
spice-glib-0.23-4.fc20.x86_64 is a duplicate with spice-glib-0.23-3.fc20.x86_64
spice-gtk3-0.23-4.fc20.x86_64 is a duplicate with spice-gtk3-0.23-3.fc20.x86_64
sqlite-3.8.7-1.fc20.x86_64 is a duplicate with sqlite-3.8.6-2.fc20.x86_64
stunnel-5.04-2.fc20.x86_64 is a duplicate with stunnel-5.02-1.fc20.x86_64
system-config-printer-libs-1.4.6-1.fc20.noarch is a duplicate with system-config-printer-libs-1.4.5-3.fc20.noarch
system-config-printer-udev-1.4.6-1.fc20.x86_64 is a duplicate with system-config-printer-udev-1.4.5-3.fc20.x86_64
systemd-208-26.fc20.x86_64 is a duplicate with systemd-208-22.fc20.x86_64
systemd-libs-208-26.fc20.x86_64 is a duplicate with systemd-libs-208-22.fc20.x86_64
```

# Usage:

Simple download and run:

```bash
 # ./remove-duplicated-rpms.sh
```






