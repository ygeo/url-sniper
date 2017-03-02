# src/bash/url-sniper/funcs/action-to-remove.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpActionToRemove comments ...
# ---------------------------------------------------------
doHelpActionToRemove(){

	doLog "DEBUG START doHelpActionToRemove"
	
	cat doc/txt/url-sniper/helps/action-to-remove.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpActionToRemove"
}
# eof func doHelpActionToRemove


# eof file: src/bash/url-sniper/funcs/action-to-remove.help.sh
