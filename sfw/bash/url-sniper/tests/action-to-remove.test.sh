# sfw/bash/url-sniper/funcs/action-to-remove.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestActionToRemove comments ...
# ---------------------------------------------------------
doTestActionToRemove(){

	doLog "DEBUG START doTestActionToRemove"
	
	cat docs/txt/url-sniper/tests/action-to-remove.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doTestActionToRemove"
}
# eof func doTestActionToRemove


# eof file: sfw/bash/url-sniper/funcs/action-to-remove.test.sh
