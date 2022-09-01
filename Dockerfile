FROM golang:latest AS build

WORKDIR /app

COPY ./src .

RUN ["go","build","."]

FROM scratch

COPY --from=build /app/full-cycle-rocks .

CMD [ "./full-cycle-rocks" ]