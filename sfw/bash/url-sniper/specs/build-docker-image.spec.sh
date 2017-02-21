# sfw/bash/url-sniper/funcs/build-docker-image.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecBuildDockerImage comments ...
# ---------------------------------------------------------
doSpecBuildDockerImage(){

	doLog "DEBUG START doSpecBuildDockerImage"
	
	cat docs/txt/url-sniper/specs/build-docker-image.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecBuildDockerImage"
}
# eof func doSpecBuildDockerImage


# eof file: sfw/bash/url-sniper/funcs/build-docker-image.spec.sh
