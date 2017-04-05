FROM kibana:5.3.0

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install zip

RUN git clone https://github.com/sbeyn/kibana-plugin-gauge-sg.git /kibana/kibana-plugin-gauge-sg
RUN sed 's/"version": ".*"/"version": "5.3.0"/g' /kibana/kibana-plugin-gauge-sg/package.json > /kibana/kibana-plugin-gauge-sg/new_package.json
RUN mv -f /kibana/kibana-plugin-gauge-sg/new_package.json /kibana/kibana-plugin-gauge-sg/package.json
RUN zip -r /gauge-sg-5.3.0.zip /kibana
RUN kibana-plugin install file:///gauge-sg-5.3.0.zip
RUN rm -R /kibana/kibana-plugin-gauge-sg

RUN git clone https://github.com/sbeyn/kibana-plugin-traffic-sg.git /kibana/kibana-plugin-traffic-sg
RUN sed 's/"version": ".*"/"version": "5.3.0"/g' /kibana/kibana-plugin-traffic-sg/package.json > /kibana/kibana-plugin-traffic-sg/new_package.json
RUN mv -f /kibana/kibana-plugin-traffic-sg/new_package.json /kibana/kibana-plugin-traffic-sg/package.json
RUN zip -r /traffic-sg-5.3.0.zip /kibana
RUN kibana-plugin install file:///traffic-sg-5.3.0.zip
RUN rm -R /kibana/kibana-plugin-traffic-sg

RUN git clone https://github.com/sbeyn/kibana-plugin-line-sg.git /kibana/kibana-plugin-line-sg
RUN sed 's/"version": ".*"/"version": "5.3.0"/g' /kibana/kibana-plugin-line-sg/package.json > /kibana/kibana-plugin-line-sg/new_package.json
RUN mv -f /kibana/kibana-plugin-line-sg/new_package.json /kibana/kibana-plugin-line-sg/package.json
RUN zip -r /line-sg-5.3.0.zip /kibana
RUN kibana-plugin install file:///line-sg-5.3.0.zip
RUN rm -R /kibana/kibana-plugin-line-sg

RUN git clone https://github.com/clamarque/kibana_health_metric_vis.git /kibana/kibana-plugin-health_metric_vis
RUN sed 's/"version": ".*"/"version": "5.3.0"/g' /kibana/kibana-plugin-health_metric_vis/package.json > /kibana/kibana-plugin-health_metric_vis/new_package.json
RUN mv -f /kibana/kibana-plugin-health_metric_vis/new_package.json /kibana/kibana-plugin-health_metric_vis/package.json
RUN zip -r /health_metric_vis-5.3.0.zip /kibana
RUN kibana-plugin install file:///health_metric_vis-5.3.0.zip
RUN rm -R /kibana/kibana-plugin-health_metric_vis

RUN git clone https://github.com/prelert/kibana-swimlane-vis.git /kibana/kibana-plugin-prelert_swimlane_vis
RUN sed 's/"version": ".*"/"version": "5.3.0"/g' /kibana/kibana-plugin-prelert_swimlane_vis/package.json > /kibana/kibana-plugin-prelert_swimlane_vis/new_package.json
RUN mv -f /kibana/kibana-plugin-prelert_swimlane_vis/new_package.json /kibana/kibana-plugin-prelert_swimlane_vis/package.json
RUN zip -r /prelert_swimlane_vis-5.3.0.zip /kibana
RUN kibana-plugin install file:///prelert_swimlane_vis-5.3.0.zip
RUN rm -R /kibana/kibana-plugin-prelert_swimlane_vis