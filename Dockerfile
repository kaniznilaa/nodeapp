FROM ubuntu:18.04
ARG maintainer "Shakil"
LABEL "WHY" "To demo dockerfile"
LABEL maintainer ${maintainer}
LABEL Support "shakiloff@gmail.com"
ENV PORT 3000
ENV App_NAME Dummy
WORKDIR /app
EXPOSE 3000

RUN apt-get update -y && \
    apt-get install git -y && \
    apt-get install nodejs -y && \
    apt-get install npm -y

COPY . /app/nodeapp/
WORKDIR /app/nodeapp
RUN npm install
ENTRYPOINT ["node"]
CMD ["app.js"]