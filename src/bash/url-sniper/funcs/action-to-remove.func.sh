# src/bash/url-sniper/funcs/action-to-remove.func.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doActionToRemove comments ...
# ---------------------------------------------------------
doActionToRemove(){

	doLog "DEBUG START doActionToRemove"
	
	cat doc/txt/url-sniper/funcs/action-to-remove.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doActionToRemove"
}
# eof func doActionToRemove


# eof file: src/bash/url-sniper/funcs/action-to-remove.func.sh
