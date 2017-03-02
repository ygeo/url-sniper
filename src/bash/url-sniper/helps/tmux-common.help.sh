# src/bash/url-sniper/funcs/tmux-common.help.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doHelpTmuxCommon comments ...
# ---------------------------------------------------------
doHelpTmuxCommon(){

	doLog "DEBUG START doHelpTmuxCommon"
	
	cat doc/txt/url-sniper/helps/tmux-common.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpTmuxCommon"
}
# eof func doHelpTmuxCommon


# eof file: src/bash/url-sniper/funcs/tmux-common.help.sh
