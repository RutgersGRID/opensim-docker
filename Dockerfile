# FROM mono
FROM mono:4.6.2.16


RUN curl http://dist.opensimulator.org/opensim-0.9.0.0.tar.gz -s | tar xzf -
COPY Regions.ini /opensim-0.9.0.0/bin/Regions/Regions.ini
COPY OpenSim.ini /opensim-0.9.0.0/bin/OpenSim.ini
#COPY SQLiteStandalone.ini /opensim-0.9.0.0/bin/config-include/storage/SQLiteStandalone.ini
#RUN mkdir /var/opensim
EXPOSE 9000
WORKDIR /opensim-0.9.0.0/bin

CMD [ "mono",  "./OpenSim.exe" ]
