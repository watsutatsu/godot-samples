#!/bin/bash

# HACK - See https://github.com/watsutatsu/godot-samples/issues/3#issuecomment-2119308212
timeout 30s godot --headless --import-stuff --editor --path "$PWD" 

godot --headless -s addons/gut/gut_cmdln.gd --path "$PWD" -gdir=res://test/unit -glog=1 -gexit