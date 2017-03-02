# src/bash/url-sniper/funcs/change-env-type.test.sh

# v1.0.0
# ---------------------------------------------------------
# todo: add doTestChangeEnvType comments ...
# ---------------------------------------------------------
doTestChangeEnvType(){

	doLog "DEBUG START doTestChangeEnvType"
	
	cat doc/txt/url-sniper/tests/change-env-type.test.txt
	sleep 2
   # Action
   # first copy the current environment meta list file for all other environments
   for env in `echo dev tst prd git`; do cp -v meta/."$env_type".url-sniper meta/."$env".url-sniper ; done ;
   
   # than create all other enironments
   for envr in `echo dev tst prd git`; do bash sfw/bash/url-sniper/url-sniper.sh -a to-"$envr" ; done ;

	doLog "DEBUG STOP  doTestChangeEnvType"
}
# eof func doTestChangeEnvType


# eof file: src/bash/url-sniper/funcs/change-env-type.test.sh
#$test_run_report_file
