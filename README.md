# crawlers container strategy - micro services w/ different depth ranges and local persistence

This services containers can be deployed using different strategies.
Is up to you decide the finest network overhead balance
Every folder of the project contains a golang app(the crawler algo) and a dockerfile(the container image).

* If you want to change the crawlers domain,delay,etc do it and just build the images again.

##Examples:

1) Will build the depth 1 & 2 crawlers services and run it in a linux envinroment network. 
A data folder with a .txt file containing the crawled URLs will be generate at root

+ $ make depth1
+ $ make depth2

2) Will clean up all the containers and images, build all the images and then run a custom scheduler

+ $ bash clean_all.sh
+ $ bash scheduler.sh

3) Build all the images and call 3 distinct crawler services 

+ $ make build_all
+ $ make d1 d2 d3



TODO
docker-compose persistence to a db or container volume
easier way to change the apps domain

