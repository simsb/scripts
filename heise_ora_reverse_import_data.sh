#!/bin/sh
# Script to reimport BPC, and run Mosaic setup scripts
cd /home/ben/projects/mosaic/src/mosaic/main/config
sh ./db_setup_ora.sh mosaic mosaic 192.168.56.101:1521/orcl N DATA
