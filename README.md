# !!! README IN PROGRESS !!! #

# 🌀 InceptionOfThings

IOT consists of configuring and managing lightweight Kubernetes clusters with K3s and K3d, as well as deploying web applications and CI/CD pipelines. <br/> <br/>
This group project is part of the 42 school **post** common core curriculum.

# 👩🏻‍🏫 WHAT THIS PROJECT BROUGHT ME
- With this project, I saw some notions of kubernetes, in particular K3d and K3s.
- I learned how to use Vagrant to manage the lifecycle of virtual machines, and Vagrantfile to configure virtual machines.

# P1 : K3s and Vagrant

For this part, we had to set up 2 machines with Vagrant :
- the Server
- and the ServerWorker <br/>

We had to install `K3s` in both machines to have a Kubernetes cluster, and install the command-line tool `kubectl` to handle it.

# P2 : K3s and three simple applications

For this part, we had to set up only one machine with three web applications. <br/>
We used [NGINX](https://nginx.org/en/) for the three of them.

# P3 : K3d and Argo CD

For this part, we had to create a Kubernetes cluster with `K3d` and set up CI/CD pipelines with `Argo CD`. <br/>
This included configuring namespaces for Argo CD and automatically deploying applications from a GitHub repository.
