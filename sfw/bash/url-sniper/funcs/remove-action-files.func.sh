# sfw/bash/url-sniper/funcs/remove-action-files.func.sh

# v1.1.2
# ---------------------------------------------------------
# obs we assume that the caller is in the product_instance_dir
# simply delete each file which greps finds to match to the action
# name(s) configured in the : 
# sfw/bash/url-sniper/tests/rem-url-sniper-actions.lst
# list file
# ---------------------------------------------------------
doRemoveActionFiles(){

	doLog "DEBUG START doRemoveActionFiles"
	
	
	# for each defined action 	
	while read -r act ; do (
		
		doLog "INFO STOP  :: removing action: $act"
		find . | grep $act | cut -c 3- | xargs rm -fv "{}"
		
	); 
	done< <(cat "sfw/bash/url-sniper/tests/rem-url-sniper-actions.lst")

	doLog "DEBUG STOP  doRemoveActionFiles"
}
# eof func doRemoveActionFiles


# eof file: sfw/bash/url-sniper/funcs/remove-action-files.func.sh
