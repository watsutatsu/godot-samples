# sample-gut

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