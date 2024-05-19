#!/bin/bash

timeout 5s godot --headless -e
godot --headless -s addons/gut/gut_cmdln.gd --path "$PWD" -gdir=res://test/unit -glog=1 -gexit