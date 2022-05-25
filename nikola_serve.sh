#!/usr/bin/env bash
docker run --rm -ti -p 127.0.0.1:8000:8000/tcp -v `pwd`:/nikola ofsite/nikola:1.0 nikola serve
