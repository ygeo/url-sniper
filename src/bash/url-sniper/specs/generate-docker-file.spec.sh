# src/bash/url-sniper/funcs/generate-docker-file.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecGenerateDockerFile comments ...
# ---------------------------------------------------------
doSpecGenerateDockerFile(){

	doLog "DEBUG START doSpecGenerateDockerFile"
	
	cat doc/txt/url-sniper/specs/generate-docker-file.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecGenerateDockerFile"
}
# eof func doSpecGenerateDockerFile


# eof file: src/bash/url-sniper/funcs/generate-docker-file.spec.sh
