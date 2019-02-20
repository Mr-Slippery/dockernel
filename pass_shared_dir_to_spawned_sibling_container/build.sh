#!/usr/bin/env bash
set -euo pipefail

pushd parent && docker build . -t parent
popd
