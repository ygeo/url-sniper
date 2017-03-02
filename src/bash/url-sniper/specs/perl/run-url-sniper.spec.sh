# src/bash/url-sniper/funcs/run-url-sniper.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRunUrlSniper comments ...
# ---------------------------------------------------------
doSpecRunUrlSniper(){

	doLog "DEBUG START doSpecRunUrlSniper"
	
	cat doc/txt/url-sniper/specs/perl/run-url-sniper.spec.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doSpecRunUrlSniper"
}
# eof func doSpecRunUrlSniper


# eof file: src/bash/url-sniper/funcs/run-url-sniper.spec.sh
