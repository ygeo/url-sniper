# sfw/bash/url-sniper/funcs/run-url-sniper.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRunUrlShooter comments ...
# ---------------------------------------------------------
doTestRunUrlShooter(){

	doLog "DEBUG START doTestRunUrlShooter"
	
	cat docs/txt/url-sniper/tests/perl/run-url-sniper.test.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"

	# Action !!!	
	bash sfw/bash/url-sniper/url-sniper.sh -a run-url-sniper

	doLog "DEBUG STOP  doTestRunUrlShooter"

}
# eof func doTestRunUrlShooter


# eof file: sfw/bash/url-sniper/funcs/run-url-sniper.test.sh
