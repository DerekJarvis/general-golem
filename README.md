This is a Dockerized golem requestor environment. It will allow you to execute a script on the golem network from your present working directory ($PWD).
It also adds additional logging for debugging purposes.

As an example, the Blender demo script shown in the tutorial (https://handbook.golem.network/requestor-tutorials/flash-tutorial-of-requestor-development) can be run using this Docker image without setting up the environment.

Use:
`docker run --rm -v ${PWD}/:/golem/work derekjarvis/general-golem:v1-latest`

Note: Your requester script must be called `requester.py`

Directory before running:
```
.
├── Docker
│   ├── Dockerfile
│   ├── start.sh
│   └── utils.py
├── cubes.blend
└── requester.py
```

Directory after running:
```
.
├── Docker
│   ├── Dockerfile
│   ├── start.sh
│   └── utils.py
├── blender-yapapi.log
├── cubes.blend
├── output_0.png
├── output_10.png
├── output_20.png
├── output_30.png
├── output_40.png
├── output_50.png
├── requester.py
└── yagna.log
```
