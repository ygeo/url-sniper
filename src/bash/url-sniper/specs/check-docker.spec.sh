# src/bash/url-sniper/funcs/check-docker.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecCheckDocker comments ...
# ---------------------------------------------------------
doSpecCheckDocker(){

	doLog "DEBUG START doSpecCheckDocker"
	
	cat doc/txt/url-sniper/specs/check-docker.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecCheckDocker"
}
# eof func doSpecCheckDocker


# eof file: src/bash/url-sniper/funcs/check-docker.spec.sh
