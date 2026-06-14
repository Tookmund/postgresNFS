#!/bin/sh
# POSTGRES_URI=postgres://user@host/dbname
# DATA_DIR=/data
set -eu

if [ -z "$DEBUG" ]
then
	echo "Begin"
else
	echo "Debug Enabled"
	set -x
fi

DBNAME="$(basename $POSTGRES_URI)"

FILENAME="$DBNAME.$(date -Iseconds).sql"

pg_dump "$POSTGRES_URI" > "$FILENAME"

mv "$FILENAME" "$DATA_DIR"

