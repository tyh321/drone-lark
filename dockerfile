FROM istio/distroless:1.20-2023-12-20T19-00-54
LABEL maintainer="johntian321"
COPY ./lark /lark
ENTRYPOINT ["/lark"]