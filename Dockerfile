FROM alpine

RUN apk add --no-cache libstdc++ g++ make git make

RUN make
