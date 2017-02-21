# sfw/bash/url-sniper/funcs/run-url-sniper.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpRunUrlShooter comments ...
# ---------------------------------------------------------
doHelpRunUrlShooter(){

	doLog "DEBUG START doHelpRunUrlShooter"
	
	cat docs/txt/url-sniper/helps/perl/run-url-sniper.help.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doHelpRunUrlShooter"
}
# eof func doHelpRunUrlShooter


# eof file: sfw/bash/url-sniper/funcs/run-url-sniper.help.sh
