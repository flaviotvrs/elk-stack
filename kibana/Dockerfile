FROM docker.elastic.co/kibana/kibana:5.3.0
#MAINTAINER mlacerda@ciandt.com

# install open or custom plugins
#RUN kibana plugin --install heatmap -u https://github.com/stormpython/heatmap/archive/master.zip
#RUN kibana plugin --install tagcloud -u https://github.com/stormpython/tagcloud/archive/master.zip
RUN /opt/kibana/bin/kibana-plugin install https://github.com/prelert/kibana-swimlane-vis/releases/download/v5.0.2/prelert_swimlane_vis-5.0.2.zip
RUN /opt/kibana/bin/kibana-plugin install https://github.com/outbrain/ob-kb-funnel/releases/download/v5.1.1/ob-kb-funnel.zip
RUN /opt/kibana/bin/kibana-plugin install https://github.com/ommsolutions/kibana_ext_metrics_vis/releases/download/0.1.0/extended_metric_vis.zip

# fix kibana 4.5 and sense plugin
#RUN chmod o+w /opt/kibana/optimize/.babelcache.json

#ENTRYPOINT ["/docker-entrypoint.sh"]
#CMD ["kibana"]