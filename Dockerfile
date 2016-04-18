FROM nginx
ENV VIRTUAL_HOST liv.uni-leipzig.de
COPY static_html.tar.gz /tmp/
RUN tar -xvzf /tmp/static_html.tar.gz -C /tmp/
RUN cp -R /tmp/static_html/* /usr/share/nginx/html/
