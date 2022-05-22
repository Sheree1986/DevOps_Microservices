[![CircleCI](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master)

Overall this project was a lot more easier to follow than project #3. I realized that when I cloned the github it included all the assignements for this unit. Because of this oversight on my part, a lot of files that needed to be in the root directory to run were not. This caused the lint error and install dependencies errors.  

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested



---

## Setup the Environment

1) clone the repo (git clone https://github.com/udacity/DevOps_Microservices.git) becasue of root error it may be best to create a new repo and add the need files. if you do that you will not have to cd into the two folders (cd DevOps_Microservices
cd project-ml-microservice-kubernetes)

2) This creates a new enviroment as per the instructions:
python3 -m venv ~/.devops
source ~/.devops/bin/activate

I followed the below steps to run the environment via ANACONDA

Used the class forum to get make install the work (https://knowledge.udacity.com/questions/749227) the steps are below:

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


3) make install to install the depedencies in the requirements.txt
4) Docker was already installed due to previous exercise
5)  brew install hadolint is required to preform the lint test
6)  In order to run  a Kubernetes cluster local install the following:
   	a) brew install --cask virtualbox (original didn't work brew cask install virtualbox)
	b) brew install --cask minkube (original didn't work brew cask install minikube)
## Task

1) Set up Dockerfile then one lint checks
2) Run a Container & Make a Prediction - complete the steps in the run_docker.sh file and run in the terminal
3) Make predications and update the docker_out.txt file for assignment
4) edit ./run_docker.sh and run to create docker image
5) run  ./upload_docker.sh. to update it to the dockerhub
6) now we can set up the image to run locally by configuring Kubernetes this is where the vitualbox we installed earlier is needed
7) The run_kubernetes.sh need to be edited in order to run upload_docker.sh to create a pod 
8) After a 5 min intermission we can update the out put to kubernetes_out.txt.
9) Lastly we must sync circleci to the github repo and run the provided config.yml file
10) in order to take you must first create a new folder and file on github by going to the repo and click create new file.
11) Once you link the repo to circleci you can see if the code pass the lint check.


As mentioned ealier I had trouble due to the fact that the code and files weren't in the root folder. But after correcting this the lint checks all passed. 


[![CircleCI](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/Sheree1986/DevOps_Microservices/tree/master)



