# !/bin/sh
set -e

echo $@

exec nginx -g 'daemon off;'