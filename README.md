# Hello cloud native Express

In this example skeleton Express.js application is provided, along with `/metrics` endpoint for Prometheus.

Steps to take with this repository:

* Fork this repository to your personal GitHub
* Clone the forked repository to your machine
* Obtain sandbox environment from https://dashboard.codemowers.eu/
* Follow the instructions on the page regarding `~/.kube/config` reconfiguration
* Follow the instructions regarding `docker login harbor.codemowers.eu`
* Adjust sandbox name `3nk45yqd6e` in `deployment.yaml` as necessary for your sandbox
* Execute the `skaffold dev ...` command provided on the sandbox detailed view
  page to build and deploy the application in the remote cluster sandbox
* Proceed to build your awesome Nodejs application
* Learn how to set up debugger: https://nodejs.org/en/docs/guides/debugging-getting-started/
