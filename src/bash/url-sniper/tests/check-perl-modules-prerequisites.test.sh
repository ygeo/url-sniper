# src/bash/wrapp/funcs/check-perl-modules-prerequisites.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCheckPerlModulesPrerequisites comments ...
# ---------------------------------------------------------
doTestCheckPerlModulesPrerequisites(){

	doLog "DEBUG START doTestCheckPerlModulesPrerequisites"
	
	cat doc/txt/wrapp/tests/check-perl-modules-prerequisites.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash src/bash/url-sniper/url-sniper.sh -a check-perl-modules-prerequisites

	doLog "DEBUG STOP  doTestCheckPerlModulesPrerequisites"
}
# eof func doTestCheckPerlModulesPrerequisites


# eof file: src/bash/wrapp/funcs/check-perl-modules-prerequisites.test.sh
#$test_run_report_file
