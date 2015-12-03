FROM node:0.12.8

COPY client /root/client
WORKDIR /root/client
RUN npm install

CMD /root/client/command command
