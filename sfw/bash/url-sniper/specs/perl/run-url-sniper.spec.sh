# sfw/bash/url-sniper/funcs/run-url-sniper.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRunUrlShooter comments ...
# ---------------------------------------------------------
doSpecRunUrlShooter(){

	doLog "DEBUG START doSpecRunUrlShooter"
	
	cat docs/txt/url-sniper/specs/perl/run-url-sniper.spec.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doSpecRunUrlShooter"
}
# eof func doSpecRunUrlShooter


# eof file: sfw/bash/url-sniper/funcs/run-url-sniper.spec.sh
