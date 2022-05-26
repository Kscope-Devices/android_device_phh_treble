#!/bin/bash

find device/phh/treble/interfaces -type d -name '[0-9].[0-9]' |while read intf;do
	interface="$(echo $intf |sed -E 's;.*device/phh/treble/interfaces/(.*)/([0-9.]*).*;\1;g' | tr '/' '.')"
	version="$(echo $intf |sed -E 's;.*device/phh/treble/interfaces/(.*)/([0-9.]*).*;\2;g')"
	full="${interface}@${version}"
	for target in androidbp;do
		hidl-gen \
			-r android.hardware:hardware/interfaces \
			-r vendor:device/phh/treble/interfaces/vendor \
			-L "$target" \
			$full
	done
done
