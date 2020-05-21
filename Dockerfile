FROM minty/solidity-dev:0.6.8-1.9.14 as dev
FROM alpine


COPY --from=dev /go/bin/geth /usr/local/bin/geth

ENTRYPOINT ["/usr/local/bin/geth"]
