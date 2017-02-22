# sfw/bash/url-sniper/funcs/generate-docker-file.func.sh

# v1.0.0
# ---------------------------------------------------------
# todo: add doGenerateDockerFile comments ...
# ---------------------------------------------------------
doGenerateDockerFile(){

	doLog "DEBUG START doGenerateDockerFile"
	
	cat docs/txt/url-sniper/funcs/generate-docker-file.func.txt
   
   product_instance_owner="$USER"	
	test -z "$sleep_interval" || sleep "$sleep_interval"
   timestamp=$(date "+%Y-%m-%d %H:%M:%S")
   # copy the template file as the current Dockerfile 
   cp -v sfw/docker/proj/url-sniper/Dockerfile.tpl sfw/docker/proj/url-sniper/Dockerfile

   # search and replace the template vars into the current product instance vars 
   perl -pi -e 's|%product_name%|'"$product_name"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%env_type%|'"$env_type"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%product_version%|'"$product_version"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%timestamp%|'"$timestamp"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%organisation_name%|'"$organisation_name"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%organisation_name_lc%|'"$organisation_name_lc"'|g' sfw/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%product_instance_owner%|'"$product_instance_owner"'|g' sfw/docker/proj/url-sniper/Dockerfile
 
	doLog "DEBUG STOP  doGenerateDockerFile"
}
# eof func doGenerateDockerFile


# eof file: sfw/bash/url-sniper/funcs/generate-docker-file.func.sh
