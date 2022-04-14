FROM nginx:1.21.6

COPY ./cmd-entrypoint.sh /sbin/entrypoint.sh

RUN chmod +x /sbin/entrypoint.sh

CMD ["hello"]

ENTRYPOINT /sbin/entrypoint.sh