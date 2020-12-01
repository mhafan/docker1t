FROM cpp-build-base:0.1.0 AS build

WORKDIR /src

COPY Makefile main.cpp ./

RUN make

FROM ubuntu:bionic

WORKDIR /opt/heya

COPY --from=build /src/heya ./

CMD ["./heya"]
