#!/bin/bash

source /home/pujazon/Escriptori/Tools/extrae/etc/extrae.sh

export OMP_NUM_THREADS=4
export EXTRAE_CONFIG_FILE=extrae.xml

${EXTRAE_HOME}/bin/extrae -v ./pi
