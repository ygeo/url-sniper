# sfw/bash/url-sniper/funcs/run-url-sniper.func.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doRunUrlSniper comments ...
# ---------------------------------------------------------
doRunUrlSniper(){

	doLog "DEBUG START doRunUrlSniper"
	
	cat docs/txt/url-sniper/funcs/perl/run-url-sniper.func.txt
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 

	# Action ... !!!
   json_file="$product_instance_dir/data/json/example.postman_collection.json"
   doLog "passing as cmd arg the following json_file $json_file"

	perl sfw/perl/url_sniper/script/url_sniper.pl --json-file "$json_file"

	doLog "DEBUG STOP  doRunUrlSniper"
}
# eof func doRunUrlSniper


# eof file: sfw/bash/url-sniper/funcs/run-url-sniper.func.sh
