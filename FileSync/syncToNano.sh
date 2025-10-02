#!/usr/bin/bash

############# TIMING
start_time=$(date +%s)
echo "start_time $start_time"
################


SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TOP_DIR=`realpath "$SCRIPT_DIR/.."`


SRC_FOLDER="$TOP_DIR/"
DEST_FOLDER="nano@192.168.0.100:/media/nano/Backup/"

SYNC_CMD="rsync"

echo "$SYNC_CMD --compress --archive --times --recursive --progress $SRC_FOLDER $DEST_FOLDER"
$SYNC_CMD --compress --archive --times --recursive --progress $SRC_FOLDER $DEST_FOLDER
retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Error in executing rsync"
fi

############# TIMING
end_time=$(date +%s)
echo "end_time $end_time"
elapsed_s=$((end_time - start_time))
hours=$((elapsed_s / 3600))
minutes=$(((elapsed_s % 3600) / 60))
seconds=$((elapsed_s))

printf "Elapsed time: %02d:%02d:%02d\n" $hours $minutes $seconds
################

exit $retVal