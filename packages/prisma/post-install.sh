#!/usr/bin/env bash

# Set Prisma engine paths for NixOS using which to find them
export PRISMA_MIGRATION_ENGINE_BINARY="$(which migration-engine)"
export PRISMA_QUERY_ENGINE_BINARY="$(which query-engine)"
export PRISMA_QUERY_ENGINE_LIBRARY="$(dirname $(which query-engine))/../lib/libquery_engine.node"
export PRISMA_INTROSPECTION_ENGINE_BINARY="$(which introspection-engine)"
export PRISMA_FMT_BINARY="$(which prisma-fmt)"
export PRISMA_SCHEMA_ENGINE_BINARY="$(which schema-engine)"
export PRISMA_ENGINES_CHECKSUM_IGNORE_MISSING="1"
export PRISMA_SKIP_POSTINSTALL_GENERATE="true"

# Run the original generate-schemas command
yarn generate-schemas