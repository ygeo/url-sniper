# src/bash/url-sniper/funcs/check-docker.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpCheckDocker comments ...
# ---------------------------------------------------------
doHelpCheckDocker(){

	doLog "DEBUG START doHelpCheckDocker"
	
	cat doc/txt/url-sniper/helps/check-docker.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpCheckDocker"
}
# eof func doHelpCheckDocker


# eof file: src/bash/url-sniper/funcs/check-docker.help.sh
