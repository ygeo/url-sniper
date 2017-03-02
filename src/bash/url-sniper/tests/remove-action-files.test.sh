# src/bash/url-sniper/funcs/remove-action-files.test.sh

# v1.1.2
# ---------------------------------------------------------
# adds first an action to remove 
# generates all the aciton files (( it will add this new ) 
# action to remove
# and tests the actual removal at the end 
# ---------------------------------------------------------
doTestRemoveActionFiles(){

	doLog "DEBUG START doTestRemoveActionFiles"

	doSpecRemoveActionFiles
	test -z "$sleep_interval" || sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"

	doHelpRemoveActionFiles
	test -z "$sleep_interval" || sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
	
	cat doc/txt/url-sniper/tests/remove-action-files.test.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
	
	# add an action to remove
	found=$(grep -c action-to-remove src/bash/url-sniper/tests/rem-url-sniper-actions.lst)
	test $found -eq 0 && \
	echo action-to-remove >> src/bash/url-sniper/tests/rem-url-sniper-actions.lst
	found=0
	
	found=$(grep -c action-to-remove src/bash/url-sniper/tests/all-url-sniper-tests.lst)
	test $found -eq 0 && \
		echo action-to-remove >> src/bash/url-sniper/tests/all-url-sniper-tests.lst

	# now generate the code files for this action to remove
	bash src/bash/url-sniper/url-sniper.sh -a generate-action-files		
	test -z "$sleep_interval" || sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"

	# and test the actual removal of the action 	
	bash src/bash/url-sniper/url-sniper.sh -a remove-action-files		
	doLog "DEBUG STOP  doTestRemoveActionFiles"

	test -z "$sleep_interval" || sleep "$sleep_interval"
	printf "\033[2J";printf "\033[0;0H"
}
# eof func doTestRemoveActionFiles


# eof file: src/bash/url-sniper/funcs/remove-action-files.test.sh
#$test_run_report_file
