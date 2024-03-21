
FROM cgr.dev/chainguard/python:latest-dev as build
WORKDIR /app 
COPY requirements.txt .
RUN pip install -r requirements.txt --user

FROM cgr.dev/chainguard/python:latest
WORKDIR /app
COPY --from=build /home/nonroot/.local/ /home/nonroot/.local/
COPY . ./ 
EXPOSE 5000
ENTRYPOINT ["/home/nonroot/.local/bin/flask","run","--host=0.0.0.0"]
#ENTRYPOINT ["python" , "app.py"]
