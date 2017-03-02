# src/bash/url-sniper/funcs/gmail-package.test.sh

# v1.1.1
# ---------------------------------------------------------
# todo: add doTestGmailPackage comments ...
# ---------------------------------------------------------
doTestGmailPackage(){

	doLog "DEBUG START doTestGmailPackage"

	doSpecGmailPackage

	doHelpGmailPackage

	cat doc/txt/url-sniper/tests/pckg/gmail-package.test.txt

	bash src/bash/url-sniper/url-sniper.sh -a create-full-package -a gmail-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-package -a gmail-package	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	bash src/bash/url-sniper/url-sniper.sh -a create-relative-7z-package -a gmail-package	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	bash src/bash/url-sniper/url-sniper.sh -a create-full-7z-package -a gmail-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
	
	doLog "DEBUG STOP  doTestGmailPackage"
}
# eof func doTestGmailPackage

# eof file: src/bash/url-sniper/funcs/gmail-package.test.sh
#$test_run_report_file
