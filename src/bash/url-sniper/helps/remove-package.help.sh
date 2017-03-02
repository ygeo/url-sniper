# src/bash/url-sniper/funcs/remove-package.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpRemovePackage comments ...
# ---------------------------------------------------------
doHelpRemovePackage(){

	doLog "DEBUG START doHelpRemovePackage"
	
	cat doc/txt/url-sniper/helps/remove-package.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpRemovePackage"
}
# eof func doHelpRemovePackage


# eof file: src/bash/url-sniper/funcs/remove-package.help.sh
