#!/bin/bash


# v1.1.0
#------------------------------------------------------------------------------
# creates a package from the relative file paths specified in the .dev file
#------------------------------------------------------------------------------
doTestCreateRelativePackage(){
	doLog " START : create-relative-package.test"

	doSpecCreateRelativePackage

	doHelpCreateRelativePackage
	
	# test the call with the include file of the current env - usually dev
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the tst env
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-package -i meta/.tst.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-package -i meta/.prd.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	# test the call with the include file of the prd env
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-package -i meta/.git.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	doLog " STOP  : create-relative-package.test"
}
#eof doCreateRelativePackage
#$test_run_report_file
