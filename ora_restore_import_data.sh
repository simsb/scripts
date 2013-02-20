#!/bin/sh
# Script to reimport BPC, and run Mosaic setup scripts
cd /home/ben/projects/mosaic/mosaic/src/mosaic/main/config
cp ~/projects/db/*.DP /tmp
sh ./db_setup_ora.sh fw fw xe password DATA
