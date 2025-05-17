#!/bin/bash
set -e

echo "Running setup..."

make install
make build
make test
make run
