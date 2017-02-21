# sfw/bash/url-sniper/funcs/run-url-sniper.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpRunUrlSniper comments ...
# ---------------------------------------------------------
doHelpRunUrlSniper(){

	doLog "DEBUG START doHelpRunUrlSniper"
	
	cat docs/txt/url-sniper/helps/perl/run-url-sniper.help.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doHelpRunUrlSniper"
}
# eof func doHelpRunUrlSniper


# eof file: sfw/bash/url-sniper/funcs/run-url-sniper.help.sh
