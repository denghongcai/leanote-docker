#! /bin/sh

set -e

DBLIST=`mongo -h $DB_HOST --quiet --eval  "printjson(db.adminCommand('listDatabases'))"`

if [[ $DBLIST == *"leanote"* ]]; then
    exit -1;
fi

mongorestore -h $DB_HOST -d leanote --dir /mongodb_backup/leanote_install_data/

