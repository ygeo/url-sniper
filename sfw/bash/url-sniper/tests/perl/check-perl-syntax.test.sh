# sfw/bash/url-sniper/funcs/check-perl-syntax.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCheckPerlSyntax comments ...
# ---------------------------------------------------------
doTestCheckPerlSyntax(){

	doLog "DEBUG START doTestCheckPerlSyntax"
	
	cat docs/txt/url-sniper/tests/perl/check-perl-syntax.test.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"

	bash sfw/bash/url-sniper/url-sniper.sh -a check-perl-syntax
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doTestCheckPerlSyntax"
}
# eof func doTestCheckPerlSyntax


# eof file: sfw/bash/url-sniper/funcs/check-perl-syntax.test.sh
