#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# shellcheck source=/dev/null
[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"

cd "${ROOT_DIR}" || exit

landslide "${ETC_DIR}"/landslide.cfg
