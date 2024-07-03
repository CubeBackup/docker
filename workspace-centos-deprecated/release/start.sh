#!/bin/sh

if test -f /cubebackup_maintenance; then
    tail -f /dev/null
else
    /opt/cubebackup/bin/cbsrv
    tail -f /dev/null
fi
