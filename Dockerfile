FROM node:16.13.1-alpine as build-step
RUN mkdir home/test-app
WORKDIR /home/test-app
COPY ./test-app/package.json /home/test-app
RUN npm install
COPY ./test-app /home/test-app
RUN npm run build --prod

FROM nginx:1.20.1
COPY --from=build-step /home/test-app/build /usr/share/nginx/html
COPY ./nginx.conf  /etc/nginx/conf.d/default.conf
# EXPOSE 4200:80
