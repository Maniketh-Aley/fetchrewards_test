# fetchrewards_test

## Overview
This project implements a multi-task learning model using a sentence transformer based on BERT, designed for:

1. Sentence Classification
2. Sentiment Analysis
It includes optimizations like layer-wise learning rates for fine-tuning the model effectively.

## Table of Contents
Requirements
Project Tasks
Setup and Installation
Running the Code
Using Docker
Requirements
All dependencies for this project are listed in requirements.txt, including:

transformers: For pre-trained BERT model loading.
tensorflow: For model building and training.
tqdm: For tracking progress in training steps (if necessary).
keras, tf-keras and so on.
Ensure you have Python 3.7+ installed.

# Project Tasks
Task 1: Sentence Transformer Implementation
Loads a pre-trained BERT model for generating sentence embeddings.
Performs mean pooling on the embeddings to obtain a fixed-size vector representation for each sentence.

Task 2: Multi-Task Learning Expansion
Extends the model to handle multiple outputs:
Sentence Classification: Multi-class classification.
Sentiment Analysis: Binary classification for sentiment (positive/negative).
Implements task-specific heads with softmax layers to handle each task independently.

Task 3: Optimizer and Layer-Wise Learning Rate
Defines an optimizer that applies different learning rates for each layer in the transformer model.
Adjusts learning rates progressively, benefiting fine-tuning on complex, multi-task architectures.

Task 4: Dockerization and Deployment
Dockerizes the project for easy setup and sharing.
Uses a Dockerfile to install all dependencies, set up Jupyter Notebook, and prepare the environment for running notebooks in Docker.


## Setup and Installation

Clone the Repository:

git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name

Install Dependencies:
If running locally, install dependencies from requirements.txt:

pip install -r requirements.txt

## Running the Code
Run Task Scripts Locally:

Each task script can be run independently. To execute tasks 1 and 2, open and run them in Jupyter Notebook or directly execute in Python after ensuring all dependencies are installed.

Start Jupyter Notebook Locally:
jupyter notebook

## Using Docker
To simplify running the environment and avoid installation issues, you can use Docker.

1. Build the Docker Image
docker build -t your-dockerhub-username/fetchrewards_test:latest .

2. Run the Docker Container
docker run -p 8888:8888 your-dockerhub-username/fetchrewards_test:latest

This will start Jupyter Notebook on port 8888. You can access it at http://localhost:8888.

3. Push the Docker Image to Docker Hub
docker push your-dockerhub-username/fetchrewards_test:latest

4. To pull docker image from docker hub
docker pull manikethaley/fetchrewards_test:latest
This will allow others to pull the Docker image from Docker Hub and use it directly.
