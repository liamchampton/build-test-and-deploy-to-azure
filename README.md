# DevOps - Build, Test and Deploy to Azure
## A web application written in Go using the Fiber/v2 routing module
**This is a template repository**

---

The accompanying article for this repository can be found [here](link-to-article)

## Quickstart to run the project locally
### Prerequisites
- Go 1.16 or higher
- Docker or Podman
- A GitHub account
- An Azure account

### Steps
- Clone this repository
- Navigate into the project root directory
- Run the command `go run main.go`

---

## Dockerfile build
- Ensure podman or Docker are running on your local machine
- Using either of the tools, run the commands shown below:
```bash
$ docker build --platform <your-platform> --tag docker.io/devops-container:v1 .
$ docker run -dt -p 3000:3000/tcp docker.io/library/devops-container:v1
```
In a browser, navigate to `localhost:3000`