# src/bash/url-sniper/funcs/run-docker-image.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpRunDockerImage comments ...
# ---------------------------------------------------------
doHelpRunDockerImage(){

	doLog "DEBUG START doHelpRunDockerImage"
	
	cat doc/txt/url-sniper/helps/run-docker-image.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpRunDockerImage"
}
# eof func doHelpRunDockerImage


# eof file: src/bash/url-sniper/funcs/run-docker-image.help.sh
