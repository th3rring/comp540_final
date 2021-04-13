# COMP 540 Final Term Project

### Rahul Popat, Thomas Herring

[Kaggle Link](https://www.kaggle.com/c/vision-for-agriculture/overview)

[Codelab Link](https://competitions.codalab.org/competitions/23732?secret_key=dba10d3a-a676-4c44-9acf-b45dc92c5fcf#learn_the_details)

Project code in project.ipynb
Download data and add it to the project locally in a directory called Agriculture-Vision

## Docker

In order to run the notebook containers, run either `run_gpu_container.sh` or `run_cpu_container.sh` from the scripts directory depending on whether or not you want GPU acceleration. In order to run either, [Docker must be installed](https://docs.docker.com/get-docker/) and for the GPU containers, [nvidia-docker2](https://github.com/NVIDIA/nvidia-docker) must be installed.

All the images are stored in the image directory. When running a container, Docker should try and pull the images from [DockerHub](https://hub.docker.com/r/th3rring/comp540_final/tags?page=1&ordering=last_updated) but if not, manually pull the images to your local machine.

You can view all running Docker containers by typing `docker ps` in a terminal on your machine. To stop a running container, use the appropriate stopping script in the scripts directory.

## Accessing Notebooks

Once an image is run, a Jupyter Notebook session will be started on `localhost:8888` and a Jupyter Lab session on `localhost:8889`. The ports for these sessions are set in the Dockerfiles for each associated container. To access these notebooks, visit these URLs in your web browser or click the links below:

[Local Jupyter Notebook](http://localhost:8888)

[Local Jupyter Lab](http://localhost:8889)

## Online resources

[keras Unet official implementation](https://keras.io/examples/vision/oxford_pets_image_segmentation/)

[Unet blog post and explanation](https://towardsdatascience.com/unet-line-by-line-explanation-9b191c76baf5)

