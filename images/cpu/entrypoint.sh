#!/bin/bash

set -e

source /etc/bash.bashrc

# Launch notebook sessions without passwords or tokens.
jupyter notebook --notebook-dir=$WORKDIR --ip 0.0.0.0 --port $NOTEBOOK_PORT --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' </dev/null &>/dev/null &
jupyter lab --notebook-dir=$WORKDIR --ip 0.0.0.0 --port $LAB_PORT --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' </dev/null &>/dev/null &

exec "$@"
