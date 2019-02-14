#!/bin/bash


echo Parameters $@
echo Parameter 0 is $0
echo Parameter 1 is $1
echo Parameter 2 is $2
echo Direct display GO_STAGE_COUNTER $GO_STAGE_COUNTER 
echo Direct display GO_PIPELINE_NAME $GO_PIPELINE_NAME
echo Direct display GO_JOB_NAME $GO_JOB_NAME

GO_SERVER_RESTURL=https://10.148.0.7:8154/go

echo string is "curl -X POST $GO_SERVER_RESTURL/properties/$GO_PIPELINE_NAME/$GO_PIPELINE_COUNTER/$GO_STAGE_NAME/$GO_STAGE_COUNTER/$GO_JOB_NAME/ipaddress -k  -H 'Confirm: true' -H 'Postman-Token: 40c07e5b-a4de-4e55-89d8-1da5ca1349ec' -H 'cache-control: no-cache' -d 'value=123'"

curl -X POST $GO_SERVER_RESTURL/properties/$GO_PIPELINE_NAME/$GO_PIPELINE_COUNTER/$GO_STAGE_NAME/$GO_STAGE_COUNTER/$GO_JOB_NAME/ipaddress -k  -H 'Confirm: true' -H 'Postman-Token: 40c07e5b-a4de-4e55-89d8-1da5ca1349ec' -H 'cache-control: no-cache' -d 'value=12345'
