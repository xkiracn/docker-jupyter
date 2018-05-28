#!/bin/bash

if [ -n "${TOKEN}" ];then
  notebook_token="--NotebookApp.token=${TOKEN}"
fi

exec /opt/conda/bin/jupyter-notebook \
    --allow-root \
    --port=8000 \
    --ip=0.0.0.0 \
    --notebook-dir=/opt/ \
    --no-browser \
    ${notebook_token}
