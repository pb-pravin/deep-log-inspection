#!/bin/bash
cd $(dirname $0) && cd ../templates

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os \
    --data @os.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-nova-api-osapi_compute \
    --data @os-nova-api-osapi_compute.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-nova-api-metadata \
    --data @os-nova-api-metadata.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-nova-compute \
    --data @os-nova-compute.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-neutron-server \
    --data @os-neutron-server.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-cinder-api \
    --data @os-cinder-api.json && \

curl -H "Content-Type: application/json" \
    -XPUT $ELASTIC_USER:$ELASTIC_PW@127.0.0.1:9200/_template/os-keystone-api \
    --data @os-keystone-api.json
