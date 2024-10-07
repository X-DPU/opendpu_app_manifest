#!/bin/bash

repo init -u https://github.com/X-DPU/opendpu_app_manifest.git -b main
repo sync
repo forall -c git checkout -b main
repo forall -c git branch --set-upstream-to=origin/main main