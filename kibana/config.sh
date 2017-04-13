#!/bin/bash

HTTP_STATUS="";

echo "env $ELASTICSEARCH_URL"

HOST=${ELASTICSEARCH_URL-"http://localhost:9200"}

while [[ $HTTP_STATUS != *"200"* ]]
do
	echo "Elastic server==> $HOST" 
	HTTP_STATUS="$(curl -IL --silent $HOST | grep HTTP)";
	echo "Status do Servidor Elastic => $([ -z "$HTTP_STATUS" ] && echo "-- off line --" || echo $HTTP_STATUS)";

	if [[ $HTTP_STATUS == *"200"* ]] ; then
		echo "ELASTICSEARCH_URL ====> $ELASTICSEARCH_URL"

		curl -XPUT $HOST/.kibana/visualization/accesslogs-TOP20Requests --data @/tmp/visualizations/accesslogs-TOP20Requests.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-TOP50ClientHostnames --data @/tmp/visualizations/accesslogs-TOP50ClientHostnames.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Histogram --data @/tmp/visualizations/accesslogs-Histogram.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-RequestsbyServer --data @/tmp/visualizations/accesslogs-RequestsbyServer.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Uniquesessions --data @/tmp/visualizations/accesslogs-Uniquesessions.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Browsers --data @/tmp/visualizations/accesslogs-Browsers.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Requestswitherror --data @/tmp/visualizations/accesslogs-Requestswitherror.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Histogrambyresponsetime --data @/tmp/visualizations/accesslogs-Histogrambyresponsetime.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-RequestsbyServiceName --data @/tmp/visualizations/accesslogs-RequestsbyServiceName.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Totalerrors --data @/tmp/visualizations/accesslogs-Totalerrors.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Totalrequests --data @/tmp/visualizations/accesslogs-Totalrequests.json
		curl -XPUT $HOST/.kibana/visualization/accesslogs-Requests --data @/tmp/visualizations/accesslogs-Requests.json

		curl -XPUT $HOST/.kibana/dashboard/AccessLogs --data @/tmp/dashboards/AccessLogs.json
	else
		sleep 2;
	fi
done

bash /docker-entrypoint.sh "$@"