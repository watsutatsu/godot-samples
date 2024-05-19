# sample-gut

## Setup

Ensure that you have the Godot CLI installed. You can download it on the [Official Godot website](https://godotengine.org/) or [Godot Releases page on GitHub](https://github.com/godotengine/godot/releases).

### Installing GUT

There is a convenient task to download the GUT addon. This allows us to avoid including it in our source control.

```
tasks/download_addons.sh
```

## Running Tests
> [!NOTE]
> For the full usage documentation for GUT see the documentation https://gut.readthedocs.io/en/latest/Command-Line.html


```shell
tasks/run_gut_tests.sh
```

or

```shell
godot --headless -s addons/gut/gut_cmdln.gd -d --path "$PWD" -gdir=res://test/unit -glog=1 -gexit
```

## Debugging with docker

```shell
docker run -it --entrypoint /bin/bash -v $PWD:/code barichello/godot-ci 
```

## Running Tests in the command line

See https://gut.readthedocs.io/en/latest/Command-Line.html

```shell
tasks/run_gut_tests.sh
```

or

```shell
godot --headless -s addons/gut/gut_cmdln.gd -d --path "$PWD" -gtest=res://test/unit/sample_tests.gd -glog=1 -gexit
```
