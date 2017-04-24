#!/bin/sh

set -e

conf=/usr/local/leanote/conf/app.conf

sed -i "s/app.secret=.*$/app.secret=${HASH} #/" $conf
sed -i "s/db.host=.*$/db.host=${DB_HOST}/" $conf
sed -i "s/site.url=.*$/site.url=\${SITE_URL} /" $conf

/usr/local/leanote/bin/run-app.sh
