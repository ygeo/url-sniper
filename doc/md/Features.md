#  FEATURES AND FUNCTIONALITIES OF THE URL-SNIPER TOOL


    

## 1. INTRODUCTION
Would't it be cool to be able to run with a oneliner your exported postman project json collection ?! Well , this is the tool - this document describes it's features and functionalities. 

    

## 2. TESTABILITY
For each distinguishable feature or functionality described in this document, related callable test(s) exist. This section describes the way the testability is implemented. 

    

### 2.1. Test each different action dynamically
You can check for installed perl modules prerequisites as follows:

    cd $produt_instance_dir
    cat sfw/bash/url-sniper/tests/run-url-sniper-tests.lst
    # each action which is not commented out will be envoked whenever you start testing as follows:
    bash sfw/bash/url-sniper/test-url-sniper.sh

### 2.2. Perl call
The perl call is tested and included in the run-url-sniper action

    cd $produt_instance_dir
    cat sfw/bash/url-sniper/tests/run-url-sniper-tests.lst | grep run-url-sniper
    # each action which is not commented out will be envoked whenever you start testing as follows:
    bash sfw/bash/url-sniper/test-url-sniper.sh

### 2.3. PERL DEVELOPMENT RELATED
You can check for installed perl modules prerequisites as follows:

    cd $produt_instance_dir
    cat sfw/bash/url-sniper/tests/run-url-sniper-tests.lst
    # each action which is not commented out will be envoked whenever you start testing as follows:
    bash sfw/bash/url-sniper/test-url-sniper.sh

## 3. PRODUCT INSTANCE RELATED


    

### 3.1. Multiple instances deployment
Your can deploy multiple instances of the tool on the same host, which might have even different versions. You can run those "product instances" simultaneously without interference. 
Different persons might run different instances of the tool on the same host simultaneously without interference.  

    

### 3.2. Easy rollback
Whenever you deploy a new instance with increased version of the tool you could easily rollback by just removing the symlink pointing to the new version and revert it back to the old one. 

    

### 3.3. creation of full zip package
You could create a single zip package containing the full source code of your application with the following call:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a create-full-package

### 3.4. creation of full password protected package
You could create a single passsword protected 7z package containing the full source code of your application with the following call:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a create-full-7z-package

## 4. PERL DEVELOPMENT RELATED
This section contains the functionalities related to the perl development for the perl based components in the tool.

    

### 4.1. Check for installed perl modules prerequisites
You can check for installed perl modules prerequisites as follows:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a check-perl-modules-prerequisites

### 4.2. Docker file generation
Your can generate a docker file with 

    bash sfw/bash/url-sniper/url-sniper.sh -a generate-docker-file

### 4.3. Syntax check for the perl code
You can check the syntax of the perl code in the solution as follows:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a check-perl-syntax

## 5. POSTMAN COLLECTION EXPORT FILE RUN


    

### 5.1. Postman collection export run 
Postman collection export run 

    

### 5.2. Perl prerequisite libraries and modules into Dockerfilee
All the required Perl modules, Ubuntu OS libs and binaries are included in a Dockerfile

    

## 6. DOCKER RELATED


    

### 6.1. Inclusion installed perl modules prerequisites
All the required Perl modules, Ubuntu OS libs and binaries are included in a Dockerfile. 

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a check-perl-modules-prerequisites

### 6.2. Dockerfile generation
The docker file can be generated dynamically as follows:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a generate-docker-file

### 6.3. Docker image building
After the docker file generation, you can build the docker image with one call as follows:

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a build-docker-image

### 6.4. Check docker images
The docker image is labeled with the configured organisation name, the timestamp of the docker-engine run the OS username performing the call.

    cd $produt_instance_dir
    bash sfw/bash/url-sniper/url-sniper.sh -a check-docker

