# src/bash/url-sniper/funcs/run-perl-tests.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRunPerlTests comments ...
# ---------------------------------------------------------
doSpecRunPerlTests(){

	doLog "DEBUG START doSpecRunPerlTests"
	
	cat doc/txt/url-sniper/specs/perl/run-perl-tests.spec.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doSpecRunPerlTests"
}
# eof func doSpecRunPerlTests


# eof file: src/bash/url-sniper/funcs/run-perl-tests.spec.sh
