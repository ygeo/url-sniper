# src/bash/url-sniper/funcs/create-ctags.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCreateCtags comments ...
# ---------------------------------------------------------
doTestCreateCtags(){

	doLog "DEBUG START doTestCreateCtags"
	
	cat doc/txt/url-sniper/tests/create-ctags.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# Action !!!
   bash src/bash/url-sniper/url-sniper.sh -a create-ctags

	doLog "DEBUG STOP  doTestCreateCtags"
}
# eof func doTestCreateCtags


# eof file: src/bash/url-sniper/funcs/create-ctags.test.sh
#$test_run_report_file
