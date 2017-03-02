# src/bash/url-sniper/funcs/check-docker.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCheckDocker comments ...
# ---------------------------------------------------------
doTestCheckDocker(){

	doLog "DEBUG START doTestCheckDocker"
	
	cat doc/txt/url-sniper/tests/check-docker.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash src/bash/url-sniper/url-sniper.sh -a check-docker

	doLog "DEBUG STOP  doTestCheckDocker"
}
# eof func doTestCheckDocker


# eof file: src/bash/url-sniper/funcs/check-docker.test.sh
#$test_run_report_file
