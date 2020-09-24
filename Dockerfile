#LABEL maintainer="docker.getreal@therojam.tech"

FROM inglebard/meteor:latest

# ENV ROOT_URL=http://example.com
# ENV MONGO_URL=mongodb://url
# ENV MONGO_OPLOG_URL=mongodb://oplog_url
# ENV MAIL_URL=smtp://mail_url.com
ENV appdir /home/meteor/app
ENV settingsfile settings_production.json
ENV runport 8080
ENV appname get-real-app
ENV MONGO_URL mongodb://meteor-db:27017/meteor-getreal 

COPY --chown=meteor get-real-src/ /home/meteor/app

EXPOSE 8080:8080

#RUN cd /home/meteor/app/ && sh GETREAL_launch.sh

WORKDIR $appdir/
RUN meteor run $appname

WORKDIR $appdir/$appname/
CMD meteor --port $runport --settings $appdir/$settingsfile 
