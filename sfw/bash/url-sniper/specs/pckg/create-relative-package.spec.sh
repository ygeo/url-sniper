# sfw/bash/url-sniper/funcs/create-relative-package.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecCreateRelativePackage comments ...
# ---------------------------------------------------------
doSpecCreateRelativePackage(){

	doLog "DEBUG START doSpecCreateRelativePackage"
	
	cat docs/txt/url-sniper/specs/pckg/create-relative-package.spec.txt
	test -z "$sleep_interval" ||  sleep $sleep_interval
	doLog "DEBUG STOP  doSpecCreateRelativePackage"
}
# eof func doSpecCreateRelativePackage


# eof file: sfw/bash/url-sniper/funcs/create-relative-package.spec.sh
