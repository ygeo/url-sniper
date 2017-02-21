# sfw/bash/url-sniper/funcs/build-docker-image.func.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doBuildDockerImage comments ...
# ---------------------------------------------------------
doBuildDockerImage(){

	doLog "DEBUG START doBuildDockerImage"
	
	cat docs/txt/url-sniper/funcs/build-docker-image.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   cd "$product_instance_dir/sfw/docker/proj/url-sniper/"

   # fail immediatelyy 
   set -e
   docker build .

	doLog "DEBUG STOP  doBuildDockerImage"
}
# eof func doBuildDockerImage


# eof file: sfw/bash/url-sniper/funcs/build-docker-image.func.sh
