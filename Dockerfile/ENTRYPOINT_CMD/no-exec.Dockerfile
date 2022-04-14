FROM nginx:1.21.6

COPY ./noexec-entrypoint.sh /sbin/entrypoint.sh

RUN chmod +x /sbin/entrypoint.sh

ENTRYPOINT /sbin/entrypoint.sh