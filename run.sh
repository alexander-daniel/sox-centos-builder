#!/bin/bash

./scripts/build-sox.sh
cp /usr/sox-14.4.2/bin/sox /output/sox
echo -e "\n\n\n\n\e[32msox was successfully copied to your output volume!"
