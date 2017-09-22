#!/bin/sh
 [ ifup = "$ACTION" -a "$INTERFACE" = wan ] && {
       /etc/config/cf_update_dns.lua
}
