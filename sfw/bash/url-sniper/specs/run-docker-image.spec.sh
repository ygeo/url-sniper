# sfw/bash/url-sniper/funcs/run-docker-image.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRunDockerImage comments ...
# ---------------------------------------------------------
doSpecRunDockerImage(){

	doLog "DEBUG START doSpecRunDockerImage"
	
	cat docs/txt/url-sniper/specs/run-docker-image.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecRunDockerImage"
}
# eof func doSpecRunDockerImage


# eof file: sfw/bash/url-sniper/funcs/run-docker-image.spec.sh
