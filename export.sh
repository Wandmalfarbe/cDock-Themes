#!/bin/bash

whotest[0]='test' || (echo 'Failure: arrays not supported in this version of
bash.' && exit 2)

themes=(
	'10.5 - Leopard'
	'Black Glass'
	'Brushed Metal'
	'Elementary'
	'Graphite Bar'
	'Graphite Bar (Light)'
	'Pantherophis'
	'Pantherophis Bar'
	'Snow'
)

inkscapePath="/Applications/Inkscape.app/Contents/Resources/bin/inkscape";

for i in "${themes[@]}"
do
   : 
   $inkscapePath -e "$(PWD)/$i/background.png" --export-area-page --export-dpi 384 "$(PWD)/$i/background.svg"
done