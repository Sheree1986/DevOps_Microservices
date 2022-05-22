<include a CircleCI status badge, here>

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv

python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies


Used the class forum to get make install the work (https://knowledge.udacity.com/questions/749227) the steps are below:


The main problem with this project is that it requires a python version 3.7 , and on mac I have installed 3.8 , I didn't find a way to downgrade or use both pythons but with ANACONDA.

Download Anaconda
Once installed, in terminal type: conda init
In terminal,create virtual environment with any python version, for example, I picked 3.4.4: conda create -n [NameOfYour VirtualEnvironment] python=3.4.4
Then, in terminal, you can check all the virtual environment you ahave created with the command: conda info --envs
Then, in terminal, activate the virtual environment of your choice with: conda activate [The name of your virtual environment that was shown with the command at step 5]
If anaconda dont find python 3.7 follow this steps here:

https://stackoverflow.com/questions/66607225/adding-python-3-7-to-anaconda

In my case I set:

conda create -n "devops" python=3.7 -c conda-forge

after it finish installing, I run

make Install (inside the devops enviroment just created)



### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


CircleCI Integration
Status Failed to get the depedencys to install I had to use the following in the install makefile (pip install --upgrade pip &&\
		pip install -r requirements.txt) this fails the lint test but allows dependenies to run.


        On the other hand if I was to use the following in the Makefile (RUN pip install --no-cache-dir requirements.txt) the test pass but the depedencies can't install.
        
         the following error displays "note: This error originates from a subprocess, and is likely not a problem with pip. error: subprocess-exited-with-error × pip subprocess to install build dependencies did not run successfully. │ exit code: 1 ╰─> See above for output."

[![CircleCI](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master)