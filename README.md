# Ensuring Quality Releases

This is the capstone project for the Udacity Cloud DevOps using Microsoft Azure Nanodegree Program. How to automate CI/CD pipelines using Azure DevOps.

## Tools
1. Visual Studio Code
2. Azure
3. Azure Devops
4. Terraform
5. JMeter
6. Postman
7. Selenium 

## Stages:

Stage 1. Infrastructure
Stage 2. Build
Stage 3. Deploy
Stage 4. Test

![Ensuring Quality Releases](https://dl3.pushbulletusercontent.com/RDMUKdpId4PJUJxmxRiM5wsuBsFJmuYx/image.png)

## VM
![Ensuring Quality Releases](https://dl3.pushbulletusercontent.com/whiaHBTj3FI5SgjY0gX2K3bgbejuOyns/image.png)


## Infrastructure

![Infrastructure Terraform](https://dl3.pushbulletusercontent.com/OaxpY2jD8NVuPbhQzkFTtdporKjn0QZT/image.png)

## Build



![Build Artifact](https://dl3.pushbulletusercontent.com/jRG2wM6me1oiLzMImBfOT14EIqyHgK66/image.png)

## Deploy

![Deploy Webapp](https://dl3.pushbulletusercontent.com/znh9zjn8I8B3JwmFD2v7PlsuSlgOR9na/image.png)

![Deploy Webapp](https://dl3.pushbulletusercontent.com/OiRvnheQShfjAK9AAK5MVuGzHtnOi5YK/image.png)

## Test


### Postman Tests

Integration Tests are performed to check the APIs provided by the webapp for existence (regression) and correctness (validation).

The tests were created using Postman and can be found in 'automatedtesting/postman'.

Execution within the pipeline is done via newman.


![Postman](https://dl3.pushbulletusercontent.com/8MQVgZxHII5RM3Z3CK0qeVZ4b3iDvqbu/image.png)


![Postman](https://lh3.googleusercontent.com/UXySe-uhk9Z3UYWZPi2C4yqZYGi1B_FhFrKx4-NHe-ppSs8xpod651aRk2BHuHAd8OXm3hkzqFgVYVFPAs4jwfD-I26GDGaOKjXrfptl=s480)

![Postman](https://lh3.googleusercontent.com/SdsnGrmWFVjhqXQpvfzhgbkmKeMWvnnLpkF4_4jZsKDc8ElJrCaqSMit_6UFpb3nn-kYePPVzgipinWmeKbuzgZcQW62YKDfOUYQUo7t=s480)

![Postman](https://lh3.googleusercontent.com/8lrbjexMOiiii3SEmfQZABYVIWgJ33Kgzz-ycS8bLbqldecLF_wqRSC9GKfz74jT2ZDMGwPJnqoq0g34TKcNSeSXSomFgk27dGd4LIU=s480)





### JMeter Tests

![JMeter](https://dl3.pushbulletusercontent.com/8JCksjRt0p2RJqOMbW1aUBkioaVDjZjW/image.png)

* Stress Test: High load during short period of time.

![Test Performance Stress](https://lh3.googleusercontent.com/qXix2ikWH-gIiWXoKiuS0gkJcx8GkiYsM-gDcL3W1k59okgnibYw7m9d2hVNd7t9KEszGhYFxZHj9jFqdODiWOX1pfaClVuuhyvCTBM=s480)

* Endurance Test: Constant load over long period of time.

![Test Performance Endurance](https://lh3.googleusercontent.com/4IL5hfoXd3_1jl_jfYLtZJHl_WPta-Bw1ee2kmHKXX-OikBbM4b-MafEnQAsr3wKoJQTK9lZVMobg7-IdWmn1Ala4fklHOJAwzi2xiz5=s480)


### Selenium


![Selenium](https://dl3.pushbulletusercontent.com/qPgxY4G0zpNmSy576CeOv6Eke3jTILgl/image.png)



### Alerting



![Alert ](https://dl3.pushbulletusercontent.com/oqUzT1BrVWcJexQ92hYgVXeV95wK5EH1/Screenshot_20210817_103538.jpg)

![Alert ](https://dl3.pushbulletusercontent.com/q34lpl069gjUXFLTPPfnr8SDxwnZ91ZI/Screenshot_20210817_104744.jpg)

![Alert ](https://dl3.pushbulletusercontent.com/BSWQCqDYu14rZmRwufzrkkdcLUXZS9S4/image.png)

