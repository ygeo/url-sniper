#!/bin/bash 

#v1.0.6
#------------------------------------------------------------------------------
# creates the relative package as component of larger product platform
#------------------------------------------------------------------------------
doTestCreateRelative7zPackage(){
	doLog " INFO START : create-relative-7z-package.test"
	
	cat sfw/bash/url-sniper/tests/create-relative-7z-package.test.sh

	bash sfw/bash/url-sniper/url-sniper.sh -a create-relative-7z-package	
	doLog " INFO STOP  : create-relative-7z-package.test"
	
	
}
#eof test doCreaterelative7zPackage

