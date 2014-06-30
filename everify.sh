#!/bin/sh

# constants, change to your username and apikey
USERNAME='your_envato_username'
APIKEY='your_envato_api_key'

# read variable from the stdin
read -p 'Enter purchase code: ' purchase_code

# main part, here we get the response from the Envato APIs using curl library
response=`curl --user-agent 'everify.sh by ProteusThemes' -s http://marketplace.envato.com/api/edge/$USERNAME/$APIKEY/verify-purchase:$purchase_code.json`

# pipelining to the python tool is just to prettify the output. You can remove the pipeline | and
# everything after it if you don't need the prettyfied format

echo $response | python -mjson.tool

exit 0
