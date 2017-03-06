#  WRAPP


    

## 1. What is it ?!
A generic swiss knife wanna be bash / perl centric application url-sniperer for quicky packaging and deploying your tools, create new tools out of your existing ones , generating code for additonal functions, search and replace in both file paths and contents ... and all the rest not mentioned actions in the src/bash/url-sniper/tests/all-url-sniper-tests.lst file ...

    

## 2. INSTALLATION AND CONFIGURATION
The url-sniper instances and clones have been running on *Nix boxes with bash &gt; 3.0 … , but some actions require 4.0 and older …
Cygwin has been tested also … 

    

### 2.1. Prerequisites
The must have binaries are:
 bash, perl, zip

The nice to have are:
 tmux, vim ,ctags

The examples are for Ubuntu - use you OS package manager …

    apt-get autoclean
    apt-get install --only-upgrade bash
    
    sudo apt-get install -y perl
    
    # optionally 
    sudo apt-get install -y excuberant-ctags
    sudo apt-get install -y 7z
    
    apt-get upgrade

### 2.2. Fetch the source
Fetch the source from git hub as follows:

    # create your product dir:
    mkdir -p /opt/csitea/url-sniper
    cd /opt/csitea/url-sniper/
    
    # fetch the source
    git clone git@github.com:YordanGeorgiev/url-sniper.git

### 2.3. Build the first url-sniper instance
When doing for first time do exactly as shown bellow, otherwise no joy ... 
Each url-sniper instance has it's own version, environmnt type and owner. For now just follow the instruction - after half an hour you will be hacking this … 

    
    # build your product version dir - a kind of "this instance of the thingy dir"
    mv -v /opt/csitea/url-sniper/url-sniper /opt/csitea/url-sniper/url-sniper.1.1.5.dev.ysg
    

### 2.4. Create you local cnf file
The default cnf file provides only limited functionality ( this is by design ) , thus copy and cnfigure the cnfiguration file for your host

    # go to the product version dir
    cd /opt/csitea/url-sniper/url-sniper /opt/csitea/url-sniper/url-sniper.1.1.5.dev.ysg
    
    mv -v src/bash/url-sniper/url-sniper.set-your-host.cnf src/bash/url-sniper/url-sniper.`hostname -s`.cnf

### 2.5. Start hacking
Start hacking … or wait check at least the test call running all the functions of the tool … 

    # opionally if you are in the vim camp open the "project relative files list file"
    vim met/.dev.url-sniper
    
    # Ctrl + Z , 
    bash src/bash/url-sniper/test-url-sniper.sh 
    
    # now clone your own instance
    bash src/bash/url-sniper/url-sniper.sh -a to-app=my-tool

