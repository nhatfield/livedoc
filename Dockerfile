FROM nginx:latest

RUN apt-get update -y \
 && apt-get install vim jq python3 python3-pip cron -yy \
 && pip install mkdocs awscli pymdown-extensions mkdocs-material mdx_truly_sane_lists mkdocs-diagrams \
 && mkdir /opt/www

COPY default-nginx.conf /etc/nginx/conf.d/default.conf
COPY docs/ /opt/www/docs/
COPY mkdocs.yml /opt/www/mkdocs.yml
COPY conf/ /opt/www/conf/
COPY lib/ /opt/www/lib/
COPY bin/ /opt/www/bin/
COPY entrypoint /

ENTRYPOINT ["./entrypoint"]
