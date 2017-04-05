FROM kibana:5.1.2

RUN apt-get update
RUN apt-get -y install curl

RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-traffic-sg/releases/download/5.1.2/traffic-sg-5.1.2.zip
RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-line-sg/releases/download/v5.1.2/line-sg.zip
RUN kibana-plugin install https://github.com/leandroandrade87/kibana-swimlane-vis/releases/download/v5.1.2/swimlane-vis.zip
RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-gauge-sg/releases/download/v5.1.2/gauge-sg.zip
RUN kibana-plugin install https://github.com/leandroandrade87/kibana_health_metric_vis/releases/download/v5.1.2/health_metric_vis.zip