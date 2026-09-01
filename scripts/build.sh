#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

ROBOT_CMD="${ROBOT_CMD:-robot}"
SRC=src/ontology/xml-ontology-edit.ofn
BUILD_DIR=build

mkdir -p "$BUILD_DIR"

echo "Running robot report (fails on ERROR)..."
$ROBOT_CMD report --input "$SRC" --fail-on ERROR --output "$BUILD_DIR/report.tsv"

echo "Running robot reason (ELK, consistency check)..."
$ROBOT_CMD reason --input "$SRC" --reasoner ELK --output "$BUILD_DIR/reasoned.owl"

echo "Converting to release format..."
$ROBOT_CMD convert --input "$SRC" --format owl --output "$BUILD_DIR/xml-ontology.owl"

cp "$BUILD_DIR/xml-ontology.owl" ./xml-ontology.owl

echo "Build OK: 0 robot report errors, consistent under ELK."
