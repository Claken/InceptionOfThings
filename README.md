# 🌀 InceptionOfThings

IOT consists of configuring and managing lightweight Kubernetes clusters with K3s and K3d, as well as deploying web applications and CI/CD pipelines. <br/> <br/>
This group project is part of the 42 school **post** common core curriculum.

# 👩🏻‍🏫 What I gained from the project
- With this project, I saw some notions of kubernetes, in particular K3d and K3s.
- I learned how to use Vagrant to manage the lifecycle of virtual machines, and Vagrantfile to configure virtual machines.

# P1 : K3s and Vagrant

For this part, we had to set up 2 machines with Vagrant :
- the Server
- and the ServerWorker <br/>

We had to install `K3s` in both machines to have a Kubernetes cluster, and install the command-line tool `kubectl` to handle it.

### 📦 Prerequisites
- [Vagrant](https://developer.hashicorp.com/vagrant/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### 🚀 Usage
```bash
cd p1
vagrant up
```

Optional useful commands:
```bash
vagrant ssh cbeauraiS
vagrant ssh rkhelifSW
vagrant destroy -f
```

# P2 : K3s and three simple applications

For this part, we had to set up only one machine with three web applications. <br/>
We used [NGINX](https://nginx.org/en/) for the three of them.

### 📦 Prerequisites
- [Vagrant](https://developer.hashicorp.com/vagrant/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### 🚀 Usage
```bash
cd p2
vagrant up
```

Map the test domains to the VM IP (`192.168.56.110`) on your host (for example in `/etc/hosts`):
```txt
192.168.56.110 app1.com
192.168.56.110 app2.com
```

Then open in your browser:
- `http://app1.com`
- `http://app2.com`
- `http://192.168.56.110` (default ingress route to app3)

# P3 : K3d and Argo CD

For this part, we had to create a Kubernetes cluster with `K3d` and set up CI/CD pipelines with `Argo CD`. <br/>
This included configuring namespaces for Argo CD and automatically deploying applications from a GitHub repository.

### 📦 Prerequisites
- [Vagrant](https://developer.hashicorp.com/vagrant/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- At least 8 GB RAM available for the VM (as configured in `p3/Vagrantfile`)

### 🚀 Usage
```bash
cd p3
vagrant up
```

Once provisioning is done:
- Argo CD UI is exposed on `https://localhost:8080`
- Login credentials are `admin / admin`

Useful commands:
```bash
vagrant ssh cbeauraiS
vagrant destroy -f
```
