# src/bash/url-sniper/funcs/remove-action-files.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecRemoveActionFiles comments ...
# ---------------------------------------------------------
doSpecRemoveActionFiles(){

	doLog "DEBUG START doSpecRemoveActionFiles"
	
	cat doc/txt/url-sniper/specs/remove-action-files.spec.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	doLog "DEBUG STOP  doSpecRemoveActionFiles"
}
# eof func doSpecRemoveActionFiles


# eof file: src/bash/url-sniper/funcs/remove-action-files.spec.sh
