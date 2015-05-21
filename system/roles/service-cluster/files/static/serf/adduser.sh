#!/bin/bash

# Perform user account initialization when authentication was done using third-party authentication backend.


GISLAB_USER=$(cat)

logger -t serf "Performing initialization of '$GISLAB_USER' account"
/usr/share/gislab/account/hooks/adduser.sh $GISLAB_USER > /dev/null


# vim: set ts=4 sts=4 sw=4 noet:
