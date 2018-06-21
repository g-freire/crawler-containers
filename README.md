<p align="center">
  <img width="220" height="180" src="http://pliutau.com/godocker.png">
</p>

###### The services can be deployed using different strategies. The services apps are very fast, so you may fine tune the network overheads and overflows
###### Every folder of the project contains a golang app(the crawler algorithms) and a dockerfile(the container image). If you want to change the app domain,delay,etc, do it and just build the images again.

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
