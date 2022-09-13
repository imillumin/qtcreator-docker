# qtcreator-docker

You may want to mount a directory with you projects, enlisting a path in 'volumes' section in docker-compose.yml (e.g. ' - /home/foo/bar:/opt').

Then, to use it with git optionally, specify projects in SAFEDIR variable in 'environment' section (e.g. ' - SAFEDIR=/opt/foo /opt/bar /opt/baz').

Start qtcreator with `./qtcreator`, remove container (docker-compose down) with `./qtcreator down`.
