# src/bash/url-sniper/funcs/check-docker.func.sh

# v1.0.0
# ---------------------------------------------------------
# checks whether docker is installed , docker images
# and the running containers and logs to the log file 
# ---------------------------------------------------------
doCheckDocker(){

	doLog "DEBUG START doCheckDocker"
	
	cat doc/txt/url-sniper/funcs/check-docker.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   docker_version="$(docker -v)"
   ret=$?
   
   test $ret -eq 0 && doLog "INFO using the following docker version: "
   test $ret -eq 0 && doLog "INFO $docker_version"
   test $ret -eq 0 && doLog "INFO ::"
   test $ret -eq 0 && doLog "INFO with the following images"
   test $ret -eq 0 && docker_images=`echo -e "\n\n\t""$(docker images)"`
   test $ret -eq 0 && doLog "INFO $docker_images"
   test $ret -eq 0 && doLog "INFO ::"

   test $ret -eq 0 && doLog "INFO ::"
   test $ret -eq 0 && doLog "INFO with following running containers"
   test $ret -eq 0 && docker_containers=`echo -e "\n\n\t""$(docker ps -a)"`
   test $ret -eq 0 && doLog "INFO $docker_containers"
   test $ret -eq 0 && doLog "INFO ::"

   test $ret -ne 0 && doLog "ERROR docker engine is not installed or not in the PATH"
   test $ret -ne 0 && doLog "ERROR To install it do google install docker MyOS"
   
	doLog "DEBUG STOP  doCheckDocker"
}
# eof func doCheckDocker


# eof file: src/bash/url-sniper/funcs/check-docker.func.sh
