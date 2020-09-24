#LABEL maintainer="docker.getreal@therojam.tech"

FROM inglebard/meteor:latest

# ENV ROOT_URL=http://example.com
# ENV MONGO_URL=mongodb://url
# ENV MONGO_OPLOG_URL=mongodb://oplog_url
# ENV MAIL_URL=smtp://mail_url.com
ARG appdir /home/meteor/app
ARG settingsfile settings_production.json
ARG runport 8080
ARG appname get-real-app

COPY --chown=meteor get-real-src/ /home/meteor/app

EXPOSE 8080:8080

#RUN cd /home/meteor/app/ && sh GETREAL_launch.sh

WORKDIR $appdir/
RUN meteor run $appname

WORKDIR $appdir/$appname/
CMD meteor --port $runport --settings $appdir/$settingsfile 
