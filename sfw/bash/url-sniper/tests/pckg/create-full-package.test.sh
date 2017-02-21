#!/bin/bash 

#v1.1.0
#------------------------------------------------------------------------------
# tests the full package creation
#------------------------------------------------------------------------------
doTestCreateFullPackage(){
	cd $product_instance_dir
	doLog " INFO START : create-full-package.test"
	
	cat docs/txt/url-sniper/tests/pckg/create-full-package.test.txt

	doSpecCreateFullPackage

	doHelpCreateFullPackage

	bash sfw/bash/url-sniper/url-sniper.sh -a create-full-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	bash sfw/bash/url-sniper/url-sniper.sh -a create-full-package -i $product_instance_dir/meta/.tst.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/url-sniper/url-sniper.sh -a create-full-package -i $product_instance_dir/meta/.prd.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/url-sniper/url-sniper.sh -a create-full-package -i $product_instance_dir/meta/.git.url-sniper
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	doLog " INFO STOP  : create-full-package.test"
}
#eof test doCreateFullPackage
