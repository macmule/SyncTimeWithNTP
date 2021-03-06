#!/bin/sh
####################################################################################################
#
# More information: http://macmule.com/2013/11/30/how-to-sync-time-with-ntp-via-script/
#
# GitRepo: https://github.com/macmule/SyncTimeWithNTP/
#
# License: http://macmule.com/license/
#
####################################################################################################

# HARDCODED VALUES ARE SET HERE

# FQDN of NTP
NTPServer=""

# CHECK TO SEE IF A VALUE WAS PASSED IN PARAMETER 4 AND, IF SO, ASSIGN TO "NTPServer"
if [ "$4" != "" ] && [ "$NTPServer" == "" ];then
    NTPServer=$4
fi

##
# Error if variable NTPServer is empty
##
if [ "$NTPServer" == "" ]; then
	echo "Error:  No value was specified for the NTPServer variable..."
	exit 1
fi

###
# Sync the time with the NTP specified as $NTPServer
###

echo "NTP Server: "$NTPServer""

sudo ntpdate -u $NTPServer
