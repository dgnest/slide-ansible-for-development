#!/usr/bin/env bash
# -*- coding: utf-8 -*-

[ -r "script/bootstrap.sh" ] && source "script/bootstrap.sh"
mkdir -p "${PUBLIC_DIR}/"
cp -rf "${ETC_DIR}"/.nojekyll "${PUBLIC_DIR}/"
cp -rf "${ROOT_DIR}"/ribbon/{css,fonts,js,images} "${PUBLIC_DIR}/"
cp -rf "${ROOT_DIR}"/_assets "${PUBLIC_DIR}/"
landslide "${ETC_DIR}"/landslide.cfg
