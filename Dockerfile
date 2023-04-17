FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive

ARG my_build_env_value=default-from-dockerfile

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    apt-get update && apt-get install -y --no-install-recommends python3

RUN env
RUN mkdir -p /srv/python
RUN echo "my_build_env_value is ${my_build_env_value}" > /srv/python/index.html
COPY ./srv/ /srv/python

EXPOSE 8080
WORKDIR /srv/python
CMD python3 -m http.server --cgi 8080
