.PHONY : all  data_folder depth1 depth2 depth3 depth4 depth5 depth6 d1 d2 d3 d4 d5 d6 

build_all: 	
	cd crawler_d1/ && docker build -t crawler .
	cd crawler_d2/ && docker build -t crawler2 -f Dockerfile_d2 .
	cd crawler_d3/ && docker build -t crawler3 -f Dockerfile_d3 .
	cd crawler_d4/ && docker build -t crawler4 -f Dockerfile_d4 .
	cd crawler_d5/ && docker build -t crawler5 -f Dockerfile_d5 .
	cd crawler_d6/ && docker build -t crawler6 -f Dockerfile_d6 .

run_all: d1 d2 d3 d4 d5 d6

run_and_build_all: depth1 depth2 depth3 depth4 depth5 depth6

data_folder:
	@[ -d data ] || mkdir data
	
depth1: data_folder
	@cd crawler_d1/ && docker build -t crawler_d1 .
	@docker run --rm -it --name crawler_depth1 crawler:latest > data/output_d1.txt

depth2: data_folder
	@cd crawler_d2/ && docker build -t crawler_d2 -f Dockerfile_d2 .
	@docker run --rm -it --name crawler_depth2 crawler2:latest > data/output_d2.txt

depth3: data_folder
	@cd crawler_d3/ && docker build -t crawler_d3 -f Dockerfile_d3 .
	@docker run --rm -it --name crawler_depth3 crawler3:latest > data/output_d3.txt

depth4: data_folder
	@cd crawler_d4/ && docker build -t crawler_d4 -f Dockerfile_d4 .
	@docker run --rm -it --name crawler_depth4 crawler4:latest > data/output_d4.txt

depth5: data_folder
	@cd crawler_d5/ && docker build -t crawler_d5 -f Dockerfile_d5 .
	@docker run --rm -it --name crawler_depth5 crawler5:latest > data/output_d5.txt

depth6: data_folder
	@cd crawler_d6/ && docker build -t crawler_d6 -f Dockerfile_d6 .
	@docker run --rm -it --name crawler_depth6 crawler6:latest > data/output_d6.txt

d1: data_folder
	@docker run --rm -it --name crawler_depth1 crawler:latest > data/output_d1.txt

d2: data_folder
	@docker run --rm -it --name crawler_depth2 crawler2:latest > data/output_d2.txt

d3: data_folder
	@docker run --rm -it --name crawler_depth3 crawler3:latest > data/output_d3.txt

d4: data_folder
	@docker run --rm -it --name crawler_depth4 crawler4:latest > data/output_d4.txt

d5:data_folder
	@docker run --rm -it --name crawler_depth5 crawler5:latest > data/output_d5.txt

d6:data_folder
	@docker run --rm -it --name crawler_depth6 crawler6:latest > data/output_d6.txt

