# src/bash/url-sniper/funcs/clone-to-app.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecCloneToApp comments ...
# ---------------------------------------------------------
doSpecCloneToApp(){

	doLog "DEBUG START doSpecCloneToApp"
	
	cat doc/txt/url-sniper/specs/clone-to-app.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecCloneToApp"
}
# eof func doSpecCloneToApp


# eof file: src/bash/url-sniper/funcs/clone-to-app.spec.sh
