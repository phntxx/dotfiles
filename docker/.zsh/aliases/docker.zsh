# miscellaneous aliases that trigger the one-time run of docker containers
# constraints:
# - all aliases must begin with "ds-"
# - docker containers must be launched with -rm flag
# - docker containers must work on the current directory

function ds-jupyter() {
    docker run -it --rm -e NOTEBOOK_ARGS="--LabApp.token=''" -p 8888:8888 -v $PWD:/home/jovyan/work jupyter/datascience-notebook
}