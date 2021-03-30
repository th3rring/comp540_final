# COMP 540 Final Term Project

### Rahul Popat, Thomas Herring

[Kaggle Link](https://www.kaggle.com/c/vision-for-agriculture/overview)

[Codelab Link](https://competitions.codalab.org/competitions/23732?secret_key=dba10d3a-a676-4c44-9acf-b45dc92c5fcf#learn_the_details)

Project code in project.ipynb
Download data and add it to the project locally in a directory called Agriculture-Vision

## Docker

In order to run the notebook containers, run either `run_gpu_container.sh` or `run_cpu_container.sh` depending on whether or not you want GPU acceleration. In order to run either, [Docker must be installed](https://docs.docker.com/get-docker/) and for the GPU containers, [nvidia-docker2](https://github.com/NVIDIA/nvidia-docker) must be installed.

All the images are stored in the image directory. When running a container, Docker should try and pull the images from [DockerHub](https://hub.docker.com/r/th3rring/comp540_final/tags?page=1&ordering=last_updated) but if not, manually pull the images to your local machine.
