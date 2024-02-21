#!/usr/bin/env bash
# run-atlas-test
# Run atlas connectivity tests.
set -eu
set +x

# Get the atlas secrets.
. ${DRIVERS_TOOLS}/.evergreen/atlas/setup-secrets.sh

echo "Running cmd/testatlas/main.go"
go run ./cmd/testatlas/main.go "$ATLAS_REPL" "$ATLAS_SHRD" "$ATLAS_FREE" "$ATLAS_TLS11" "$ATLAS_TLS12" "$ATLAS_SERVERLESS" "$ATLAS_SRV_REPL" "$ATLAS_SRV_SHRD" "$ATLAS_SRV_FREE" "$ATLAS_SRV_TLS11" "$ATLAS_SRV_TLS12" "$ATLAS_SRV_SERVERLESS" | tee test.suite
