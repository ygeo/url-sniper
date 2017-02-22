# sfw/bash/url-sniper/funcs/generate-docker-file.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestGenerateDockerFile comments ...
# ---------------------------------------------------------
doTestGenerateDockerFile(){

	doLog "DEBUG START doTestGenerateDockerFile"
	
	cat docs/txt/url-sniper/tests/generate-docker-file.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
   
   current_docker_file="$product_instance_dir/sfw/docker/proj/url-sniper/Dockerfile"
   # remove the current docker if it exists 
   test -f "$current_docker_file" && rm -fv "$current_docker_file"
   
	# Action !!!
   bash sfw/bash/url-sniper/url-sniper.sh -a generate-docker-file

   test -f "$current_docker_file" && doLog "generated $current_docker_file"
	doLog "DEBUG STOP  doTestGenerateDockerFile"
}
# eof func doTestGenerateDockerFile


# eof file: sfw/bash/url-sniper/funcs/generate-docker-file.test.sh
