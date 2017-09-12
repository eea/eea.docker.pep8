#!/bin/sh
set -e

CMD="$@"

if [[ ${CMD:0:4} = "http" ]]; then
  GIT_SRC=$@
  CMD="pep8"
fi

if [[ ${CMD:0:3} = "git" ]]; then
  GIT_SRC=$@
  CMD="pep8"
fi

if [ ! -z "$GIT_SRC" ]; then
  cd /code
  git clone $GIT_SRC
fi

if [[ ${CMD:0:1} = "-" ]]; then
  exec pep8 "$@"
fi

if [ -z "$PARAMS" ]; then
  PARAMS="--exclude=Extensions,skins,tests"
fi

if [ "$CMD" = "pep8" ]; then
  pep8 $PARAMS /code
else
  exec "$@"
fi
