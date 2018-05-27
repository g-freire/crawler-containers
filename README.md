![alt text](http://pliutau.com/godocker.png)

<img src="http://pliutau.com/godocker.pngo" width="48">


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

  - <img src="https://camo.githubusercontent.com/331400aee821efda2e36ee9b3bc8bce93b975109/68747470733a2f2f6779617a6f2e636f6d2f65623563353734316236613961313663363932313730613431613439633835382e706e67" alt="" data-canonical-src="https://gyazo.com/eb5c5741b6a9a16c692170a41a49c858.png" width="200" height="400" />
