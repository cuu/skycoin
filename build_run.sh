#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "skycoin binary dir:" "$DIR"
pushd "$DIR" >/dev/null
if [ -f "./skycoin" ]; then
./skycoin --gui-dir="${DIR}/src/gui/static/" $@
else 
	echo "go build cmd/skycoin/skycoin.go"
fi

popd >/dev/null
