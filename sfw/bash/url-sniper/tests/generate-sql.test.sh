# sfw/bash/url-sniper/funcs/generate-sql.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGenerateSQL comments ...
# ---------------------------------------------------------
doTestGenerateSQL(){

	doLog "DEBUG START doTestGenerateSQL"
	
	cat docs/txt/url-sniper/tests/generate-sql.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash sfw/bash/url-sniper/url-sniper.sh -a generate-sql

	doLog "DEBUG STOP  doTestGenerateSQL"
}
# eof func doTestGenerateSQL


# eof file: sfw/bash/url-sniper/funcs/generate-sql.test.sh
