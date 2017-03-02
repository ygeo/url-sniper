# src/bash/url-sniper/funcs/generate-docker-file.func.sh

# v1.0.0
# ---------------------------------------------------------
# todo: add doGenerateDockerFile comments ...
# ---------------------------------------------------------
doGenerateDockerFile(){

	doLog "DEBUG START doGenerateDockerFile"
	
	cat doc/txt/url-sniper/funcs/generate-docker-file.func.txt
   
   product_instance_owner="$USER"	
	test -z "$sleep_interval" || sleep "$sleep_interval"
   timestamp=$(date "+%Y-%m-%d %H:%M:%S")
   # copy the template file as the current Dockerfile 
   cp -v src/docker/proj/url-sniper/Dockerfile.tpl src/docker/proj/url-sniper/Dockerfile

   # search and replace the template vars into the current product instance vars 
   perl -pi -e 's|%product_name%|'"$product_name"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%env_type%|'"$env_type"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%product_version%|'"$product_version"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%timestamp%|'"$timestamp"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%organisation_name%|'"$organisation_name"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%organisation_name_lc%|'"$organisation_name_lc"'|g' src/docker/proj/url-sniper/Dockerfile
   perl -pi -e 's|%product_instance_owner%|'"$product_instance_owner"'|g' src/docker/proj/url-sniper/Dockerfile
 
	doLog "DEBUG STOP  doGenerateDockerFile"
}
# eof func doGenerateDockerFile


# eof file: src/bash/url-sniper/funcs/generate-docker-file.func.sh
