# sfw/bash/url-sniper/funcs/clone-to-app.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpCloneToApp comments ...
# ---------------------------------------------------------
doHelpCloneToApp(){

	doLog "DEBUG START doHelpCloneToApp"
	
	cat docs/txt/url-sniper/helps/clone-to-app.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpCloneToApp"
}
# eof func doHelpCloneToApp


# eof file: sfw/bash/url-sniper/funcs/clone-to-app.help.sh
