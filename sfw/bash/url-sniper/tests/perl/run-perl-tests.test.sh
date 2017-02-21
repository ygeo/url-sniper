# sfw/bash/url-sniper/funcs/run-perl-tests.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRunPerlTests comments ...
# ---------------------------------------------------------
doTestRunPerlTests(){

	doLog "DEBUG START doTestRunPerlTests"
	
	cat docs/txt/url-sniper/tests/perl/run-perl-tests.test.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	
	bash sfw/bash/url-sniper/url-sniper.sh -a run-perl-tests
	
	doLog "DEBUG STOP  doTestRunPerlTests"
}
# eof func doTestRunPerlTests


# eof file: sfw/bash/url-sniper/funcs/run-perl-tests.test.sh
