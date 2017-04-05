FROM kibana:5.3.0

RUN apt-get update
RUN apt-get install git

RUN git clone https://github.com/sbeyn/kibana-plugin-traffic-sg.git /usr/share/kibana/plugins/traffic-sg
RUN git clone https://github.com/sbeyn/kibana-plugin-gauge-sg.git /usr/share/kibana/plugins/gauge-sg
RUN git clone https://github.com/sbeyn/kibana-plugin-line-sg.git /usr/share/kibana/plugins/line-sg