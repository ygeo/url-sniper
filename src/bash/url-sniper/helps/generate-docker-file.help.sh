# src/bash/url-sniper/funcs/generate-docker-file.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpGenerateDockerFile comments ...
# ---------------------------------------------------------
doHelpGenerateDockerFile(){

	doLog "DEBUG START doHelpGenerateDockerFile"
	
	cat doc/txt/url-sniper/helps/generate-docker-file.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpGenerateDockerFile"
}
# eof func doHelpGenerateDockerFile


# eof file: src/bash/url-sniper/funcs/generate-docker-file.help.sh
