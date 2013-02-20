#!/bin/sh
# Script to reimport BPC, and run Mosaic setup scripts
cd /home/ben/projects/mosaic/mosaic/src/mosaic/main/config
sh ./db_setup_ora.sh fw_test fw_test xe N NO_DATA
