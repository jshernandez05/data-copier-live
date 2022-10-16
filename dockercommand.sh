#!/bin/bash
tables=$@
docker run --name dca-copier \
  -it \
  --rm \
  --network dc_af_nw \
  data-copier-live_dc-app python app.py dev ${tables}
