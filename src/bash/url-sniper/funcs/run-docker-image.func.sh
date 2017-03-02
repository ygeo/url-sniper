# src/bash/url-sniper/funcs/run-docker-image.func.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doRunDockerImage comments ...
# ---------------------------------------------------------
doRunDockerImage(){

	doLog "DEBUG START doRunDockerImage"
	
	cat doc/txt/url-sniper/funcs/run-docker-image.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doRunDockerImage"
}
# eof func doRunDockerImage


# eof file: src/bash/url-sniper/funcs/run-docker-image.func.sh
