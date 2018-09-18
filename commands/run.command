#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"
cd ..
open http://localhost:1313
hugo server -D -F -p 1313
