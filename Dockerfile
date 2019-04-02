# NOTE: this Dockerfile builds Metabase from source. We recommend deploying the pre-built
# images hosted on Docker Hub https://hub.docker.com/r/metabase/metabase/ which use the
# Dockerfile located at ./bin/docker/Dockerfile

FROM hellotech/metabase:0.27.3

# expose our default runtime port
EXPOSE 3000
COPY ./run_metabase.sh /app/source
# build and then run it
WORKDIR /app/source
ENTRYPOINT ["./run_metabase.sh"]
