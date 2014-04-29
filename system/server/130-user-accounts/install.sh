#
### USER ACCOUNTS ###
#

# skip on upgrade
if [ -f "/etc/gislab/130-user-accounts.done" ]; then return; fi

# Some Vagrant boxes are using 'vagrant' account for provisioning, some of them are
# using 'ubuntu' account. Set strong password for these accounts.
# Test which account exists and set strong password.
if id -u vagrant > /dev/null 2>&1; then echo "vagrant:$(pwgen -1 -n 24)" | chpasswd; fi
if id -u ubuntu > /dev/null 2>&1; then echo "ubuntu:$(pwgen -1 -n 24)" | chpasswd; fi


# vim: set syntax=sh ts=4 sts=4 sw=4 noet: