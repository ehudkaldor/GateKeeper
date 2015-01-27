# GateKeeper

GateKeeper is a web application to manage services on the network. in-dev currently:
* Hosts (generic, containers of services)
* DHCP server(s) - DNSMASQ [ISC-DHCP in future]
* DNS server(s) - DNSMASQ [BIND9 in the future]
* NFS server(s)
* CIFS (SAMBA) server(s)

architectures of services:
1 traditional: using Linux server(s) running a one or more services. services will be installed and configured using standard CLI commands
* management can be done using SSH and centificates on the management server
2 Docker.IO (preferred): each service will run in a Docker container.
* management will be either over SSH and containers (log into Docker server and use CLI commands), or (prefferd) over Docker API.

another bold option is to use Akka cluster to connect between the Docker hosts, and have Akka run the Docker commands locally. This could be done with a Scala implementaiton of a Docker API (TugBoat or Reactive-Docker).


Front end management should support
* Security and RBAC
* Async and reactiveness
* Multi user


