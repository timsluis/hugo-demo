#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"
cd ..
hugo list drafts
