# miscellaneous aliases that trigger the one-time run of docker containers
# constraints:
# - docker containers must be launched with -rm flag
# - docker containers must work on the current directory

alias docker-jupyter="docker run -it —rm -p 8888:8888 -v '${PWD}':/home/jovyan/work jupyter/datascience-notebook"