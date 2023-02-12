FROM golang AS builder

COPY src .

RUN go build fullcycle.go

FROM scratch
COPY --from=builder /go/fullcycle .
CMD ["/fullcycle"]