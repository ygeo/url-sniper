# sfw/bash/url-sniper/funcs/action-to-remove.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecActionToRemove comments ...
# ---------------------------------------------------------
doSpecActionToRemove(){

	doLog "DEBUG START doSpecActionToRemove"
	
	cat docs/txt/url-sniper/specs/action-to-remove.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecActionToRemove"
}
# eof func doSpecActionToRemove


# eof file: sfw/bash/url-sniper/funcs/action-to-remove.spec.sh
