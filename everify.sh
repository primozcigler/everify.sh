#!/bin/sh

# constants, change to your username and apikey
USERNAME0='your_envato_username'
APIKEY0='your_envato_api_key'
# USERNAME1='your_second_envato_username'
# APIKEY1='your_second_envato_api_key'

# read variable from the stdin if needed, first argument is used if not empty
if [ -z "$1" ]
then
	read -p 'Enter purchase code: ' purchase_code
else
	purchase_code="$1"
fi

# allow checking in multiple accounts
if [[ -z "$2" ]]; then
	ACCNO=0
else
	ACCNO=$2
fi

# prepare variables
USERNAME="USERNAME$ACCNO"
APIKEY="APIKEY$ACCNO"

# main part, here we get the response from the Envato APIs using curl library
response=`curl --user-agent 'everify.sh by ProteusThemes' -s http://marketplace.envato.com/api/edge/${!USERNAME}/${!APIKEY}/verify-purchase:$purchase_code.json`

# pipelining to the python tool is just to prettify the output. You can remove the pipeline | and
# everything after it if you don't need the prettyfied format

echo $response | python -mjson.tool

exit 0
