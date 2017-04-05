FROM kibana:5.1.2

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install zip

RUN git clone https://github.com/sbeyn/kibana-plugin-gauge-sg.git /gauge-sg
RUN sed 's/"version": ".*/"version": "5.3.0"/g' /gauge-sg/package.json > /gauge-sg/new_package.json
RUN mv -f /gauge-sg/new_package.json /gauge-sg/package.json
RUN cd /gauge-sg && zip -r /gauge-sg.zip *
RUN kibana-plugin install file:///gauge-sg.zip


#RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-traffic-sg/releases/download/5.1.2/traffic-sg-5.1.2.zip
#RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-line-sg/releases/download/v5.1.2/line-sg.zip
#RUN kibana-plugin install https://github.com/leandroandrade87/kibana-swimlane-vis/releases/download/v5.1.2/swimlane-vis.zip
#RUN kibana-plugin install https://github.com/leandroandrade87/kibana-plugin-gauge-sg/releases/download/v5.1.2/gauge-sg.zip
#RUN kibana-plugin install https://github.com/leandroandrade87/kibana_health_metric_vis/releases/download/v5.1.2/health_metric_vis.zip