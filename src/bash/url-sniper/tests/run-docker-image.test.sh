# src/bash/url-sniper/funcs/run-docker-image.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRunDockerImage comments ...
# ---------------------------------------------------------
doTestRunDockerImage(){

	doLog "DEBUG START doTestRunDockerImage"
	
	cat doc/txt/url-sniper/tests/run-docker-image.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestRunDockerImage"
}
# eof func doTestRunDockerImage


# eof file: src/bash/url-sniper/funcs/run-docker-image.test.sh
#$test_run_report_file
