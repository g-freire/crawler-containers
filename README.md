<p align="center">
  <img width="220" height="180" src="http://pliutau.com/godocker.png">
</p>

##### This services containers can be deployed using different strategies. Is up to you decide the finest network overhead balance. 
##### Every folder of the project contains a golang app(the crawler algo) and a dockerfile(the container image). If you want to change the crawlers domain,delay,etc do it and just build the images again.
#
#### Examples:

#### 1) Will build the depth 1 & 2 crawlers services and run it in a linux envinroment network. 
```diff
+ $ make depth1
+ $ make depth2
 ```
#### 2) Will clean up all the containers and images, build all the images and then run a custom scheduler
```diff
+ $ bash clean_all.sh
+ $ bash scheduler.sh
 ```
#### 3) Build all the images and call 3 distinct crawler services 
```diff
+ $ make build_all
+ $ make d1 d2 d3
```
#
#
#### TODO
##### Infra
- [x] Multi-stage Dockerfiles
- [x] Makefile shortcuts
- [x] sample scheduler & helper scripts
- [ ] docker-compose.yml to SQL persist/ volume container backup
- [ ] orchestration
##### Backend
- [x] set random delay, debug and paralell jobs
- [ ] distributed cloud server
- [ ] random headers & random proxies
- [ ] easier way to change app domain
- [ ] db design and sql schema to local and cloud persistence
