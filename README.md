# Cleanup duplicated RPMs

## WARNING:
This tool works for me but it may not do the same for you.
Be aware, playing around with RPMs like this might ends up with unexpected results!
* Tested only on Fedora20.
* To remove all duplicated RPMs on my system, I had to execute this tool several times. 


### Case: 
If one for example stopped the periodical *yum update* in the middle, the result might be duplicated RPMs installed on the system. Both new and old version of the same RPM package.
In such a case the output of the bellow command:

```bash
 # yum check
```

will be similiar to the bellow one:

```bash
spice-glib-0.23-4.fc20.x86_64 is a duplicate with spice-glib-0.23-3.fc20.x86_64
spice-gtk3-0.23-4.fc20.x86_64 is a duplicate with spice-gtk3-0.23-3.fc20.x86_64
sqlite-3.8.7-1.fc20.x86_64 is a duplicate with sqlite-3.8.6-2.fc20.x86_64
stunnel-5.04-2.fc20.x86_64 is a duplicate with stunnel-5.02-1.fc20.x86_64
systemd-208-26.fc20.x86_64 is a duplicate with systemd-208-22.fc20.x86_64
.... etc`
```

### Usage:

Simple download and run:

```bash
 # ./clean-duplicated-rpms.sh
```

### Other solutions
I found quite few different solutions to that problem. Non of them worked for me.



