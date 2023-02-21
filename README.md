# DevOps - Build, Test and Deploy to Azure
## A web application written in Go using the Fiber/v2 routing module
**This is a template repository**

---
> **NOTE:** This repository build status will continue to fail as it is an example repository specifically for the blog article mentioned below. This will not affect you if you fork it and set up the pipeline secrets correctly.

The accompanying article for this repository can be found [here](link-to-article)

## Quickstart to run the project **locally**
### Prerequisites
- Go 1.16 or higher
- Docker or Podman
- A GitHub account
- An Azure account

### Steps
- Clone this repository
- Navigate into the project root directory
- Run the command `go run main.go` to test the application runs

---

## Local Dockerfile build
- Ensure podman or Docker are running on your local machine
- Using either of the tools, run the commands shown below:
```bash
$ docker build --platform <your-platform> --tag docker.io/devops-container:v1 .
$ docker run -dt -p 3000:3000/tcp docker.io/library/devops-container:v1
```
In a browser, navigate to `localhost:3000`