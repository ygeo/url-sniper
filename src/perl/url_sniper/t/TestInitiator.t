use strict ; use warnings ; 

use FindBin;
BEGIN { unshift @INC, "$FindBin::Bin/../lib" }

use UrlSniper::App::Utils::Initiator ; 
use Test::More tests => 20 ; 
use Data::Printer ; 


my $objInitiator 				= 'UrlSniper::App::Utils::Initiator'->new();	
my $appConfig					= {} ;
my $ProductBaseDir 			= $objInitiator->doResolveMyProductBaseDir();
my $ProductDir 				= $objInitiator->doResolveMyProductDir();
my $ProductInstanceDir 		= $objInitiator->doResolveMyProductInstanceDir();
my $EnvironmentName 			= $objInitiator->doResolveMyEnvironmentName();
my $ProductName 				= $objInitiator->doResolveMyProductName();
my $ProductVersion 			= $objInitiator->doResolveMyProductVersion();
my $ProductType 				= $objInitiator->doResolveMyProductType();
my $ProductOwner 				= $objInitiator->doResolveMyProductOwner();
my $ConfFile 					= $objInitiator->doResolveMyConfFile();
my $HostName					= $objInitiator->doResolveMyHostName();

# this might seem as very nasty, but responsibility should ALWAYS be personal
my $ProductOwner				= $ENV{'USER'}  ; 

$appConfig						= $objInitiator->get ('AppConfig'); 
p($appConfig) ; 

ok ( $ProductBaseDir 		eq '/opt/futu' ) ; 
ok ( $ProductDir 				eq '/opt/futu/url-sniper' ) ; 
ok ( $ProductInstanceDir 	eq '/opt/futu/url-sniper/url-sniper.0.1.4.tst.' . $ProductOwner ); 
ok ( $ProductVersion 		eq '0.1.4' ); 
ok ( $EnvironmentName 		eq 'url-sniper.0.1.4.tst.' . $ProductOwner ); 
# try to test always in the tst product instance and deploy on the other environments
ok ( $ProductType 			eq 'tst' ) ;
ok ( $ProductType 			ne 'dev' ) ;
ok ( $ProductType 			ne 'prd' ) ;
ok ( $ProductOwner 			eq 'ygeo' ) ;
my $cmd_out						= `hostname -s` ; 
chomp ( $cmd_out ) ; 
ok ( $HostName 				eq "$cmd_out" ) ;
ok ( $ConfFile					eq 
'/opt/futu/url-sniper/url-sniper.0.1.4.tst.ygeo/cnf/url-sniper.' . $cmd_out . '.cnf' ) ; 

ok ( $ProductBaseDir 		eq $appConfig->{'ProductBaseDir'} ) ; 
ok ( $ProductDir 				eq $appConfig->{'ProductDir'} ) ; 
ok ( $ProductInstanceDir 	eq $appConfig->{'ProductInstanceDir'} ) ; 
ok ( $ProductVersion 		eq $appConfig->{'ProductVersion' } ); 
ok ( $EnvironmentName 		eq $appConfig->{'EnvironmentName'} ); 
ok ( $ProductType 			eq $appConfig->{'ProductType'} ) ;
ok ( $ProductOwner 			eq $appConfig->{'ProductOwner'} ) ;
ok ( $HostName 				eq $appConfig->{'HostName'} ) ;
ok ( $ConfFile 				eq $appConfig->{'ConfFile'} ) ;

