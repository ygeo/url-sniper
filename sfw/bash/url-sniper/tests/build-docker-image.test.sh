# sfw/bash/url-sniper/funcs/build-docker-image.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestBuildDockerImage comments ...
# ---------------------------------------------------------
doTestBuildDockerImage(){

	doLog "DEBUG START doTestBuildDockerImage"
	
	cat docs/txt/url-sniper/tests/build-docker-image.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestBuildDockerImage"
}
# eof func doTestBuildDockerImage


# eof file: sfw/bash/url-sniper/funcs/build-docker-image.test.sh
