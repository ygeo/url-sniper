# sfw/bash/url-sniper/funcs/clone-to-app.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCloneToApp comments ...
# ---------------------------------------------------------
doTestCloneToApp(){

	doLog "DEBUG START doTestCloneToApp"
	
	cat docs/txt/url-sniper/tests/dev/clone-to-app.test.txt
	sleep 2
	# add your action implementation code here ... 
   bash sfw/bash/url-sniper/url-sniper.sh -a to-app=foobar

	doLog "DEBUG STOP  doTestCloneToApp"
}
# eof func doTestCloneToApp


# eof file: sfw/bash/url-sniper/funcs/clone-to-app.test.sh
