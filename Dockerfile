FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

ADD . ./src

RUN --env mysk=$mysk sed -i -e 's/phantom/{mysk}/g' ./src/config.ts

CMD ["npm", "run", "dev"]
