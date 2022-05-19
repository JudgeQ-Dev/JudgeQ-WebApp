#! /bin/bash

TOP_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

set -x

cd "${TOP_DIR}"/../public || exit 1

AMAZEUI="amazeui"
JQUERY="jquery"

if [[ -d "${AMAZEUI}" ]]; then
    rm -rf "${AMAZEUI}"
fi

if [[ -d "${JQUERY}" ]]; then
    rm -rf "${JQUERY}"
fi

git clone -b release https://github.com/Dup4/amazeui.git --depth=1
rm -rf amazeui/.git

mkdir "${JQUERY}"

cd "${JQUERY}" || exit 1

wget https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js
wget https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.map
