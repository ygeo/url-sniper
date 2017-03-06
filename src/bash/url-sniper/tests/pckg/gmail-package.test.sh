# src/bash/url-sniper/funcs/gmail-package.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGmailPackage comments ...
# ---------------------------------------------------------
doTestGmailPackage(){

	doLog "DEBUG START doTestGmailPackage"
	
   cat doc/txt/url-sniper/tests/pckg/gmail-package.test.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"

	bash src/bash/url-sniper/url-sniper.sh -a create-full-package -a gmail-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	doLog "DEBUG STOP  doTestGmailPackage"
}
# eof func doTestGmailPackage


# eof file: src/bash/url-sniper/funcs/gmail-package.test.sh
