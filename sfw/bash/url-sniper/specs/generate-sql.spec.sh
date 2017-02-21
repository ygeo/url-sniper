# sfw/bash/url-sniper/funcs/generate-sql.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecGenerateSQL comments ...
# ---------------------------------------------------------
doSpecGenerateSQL(){

	doLog "DEBUG START doSpecGenerateSQL"
	
	cat docs/txt/url-sniper/specs/generate-sql.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecGenerateSQL"
}
# eof func doSpecGenerateSQL


# eof file: sfw/bash/url-sniper/funcs/generate-sql.spec.sh
