#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'device/rr/sepolicy'
    'frameworks/native'
    'system/core'
    'system/sepolicy'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done
