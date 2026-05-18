#!/bin/bash

VENV_LOCATION="`realpath venv`"
SRC_LOCATION=src
MAIN_SCRIPT=run_switch_client.py

if [[ -n "${VIRTUAL_ENV}" ]]; then
    echo "Virtual environment detected"
    echo "Please exit this environment before running this script"
    exit 1
else
    echo "Bringing up virtual environment"
    source ${VENV_LOCATION}/bin/activate
    echo "Virtual environment active: ${VIRTUAL_ENV}"
fi

python3 ${SRC_LOCATION}/${MAIN_SCRIPT} -c switch_control_cfg.json
