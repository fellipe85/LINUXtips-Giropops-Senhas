FROM ubuntu as build 
WORKDIR /apps
RUN apt update && apt install pip -y  
COPY . ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV REDIS_HOST=172.31.21.228
#FROM alpine:3.15.9
#COPY --from=build 
CMD ["flask","run","--host=0.0.0.0"]
