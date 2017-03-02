# src/bash/url-sniper/funcs/generate-sql.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGenerateSQL comments ...
# ---------------------------------------------------------
doTestGenerateSQL(){

	doLog "DEBUG START doTestGenerateSQL"
	
	cat doc/txt/url-sniper/tests/generate-sql.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash src/bash/url-sniper/url-sniper.sh -a generate-sql

	doLog "DEBUG STOP  doTestGenerateSQL"
}
# eof func doTestGenerateSQL


# eof file: src/bash/url-sniper/funcs/generate-sql.test.sh
#$test_run_report_file
