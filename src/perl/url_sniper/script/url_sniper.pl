#!/usr/bin/env perl

use strict;
use warnings;

   $|++;


require Exporter ;
our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw() ;
our $AUTOLOAD =();

use Data::Printer ; 
use URI::Encode qw(uri_encode uri_decode);
use JSON ();
use JSON::Parse ':all' ;
use WWW::Curl;
use HTTP::Response ; 
use WWW::Curl::Easy;

use utf8 ;
use Carp ;
use Cwd qw ( abs_path ) ;
use Getopt::Long;

my $objConfigurator ; 
my $objLogger ; 
my $appConfig ; 
my $objInitiator ; 
my $TOKEN ; 
my $PROJECT_ID ; 



BEGIN {
	use Cwd qw (abs_path) ;
	my $my_inc_path = Cwd::abs_path( $0 );

	$my_inc_path =~ m/^(.*)(\\|\/)(.*?)(\\|\/)(.*)/;
	$my_inc_path = $1;
	
	# debug ok print "\$my_inc_path $my_inc_path \n" ; 

	unless (grep {$_ eq "$my_inc_path"} @INC) {
		push ( @INC , "$my_inc_path" );
		$ENV{'PERL5LIB'} .= "$my_inc_path" ;
	}

	unless (grep {$_ eq "$my_inc_path/lib" } @INC) {
		push ( @INC , "$my_inc_path/lib" );
		$ENV{'PERL5LIB'} .= ":$my_inc_path/lib" ;
	}
}

# use own modules ...
use UrlSniper::App::Utils::Initiator ; 
use UrlSniper::App::Utils::Configurator ; 
use UrlSniper::App::Utils::Logger ; 
use UrlSniper::App::Utils::IO::FileHandler ; 
use UrlSniper::App::Model::DbHandlerFactory ; 
use UrlSniper::App::Model::MariaDbHandler ; 
use UrlSniper::App::Ctrl::CtrlURLRun ; 

my $rdbms_type    = 'maria_db' ; 
my $json_file     = q{} ; 




#
# the main entry point of the application
#
sub main {

	print " url_sniper.pl START MAIN \n " ; 
   doInitialize();	
	my $obCtrlURLRun 				= 'UrlSniper::App::Ctrl::CtrlURLRun'->new ( \$appConfig ) ; 
   $objLogger->doLogInfoMsg ( "using the following json_file " ) ; 
   $objLogger->doLogInfoMsg ( $json_file ) ; 

   $obCtrlURLRun->doRunURLs( $json_file );
   
	$objLogger->doLogInfoMsg ( "STOP  MAIN") ; 
}
#eof sub main



sub doInitialize {

   $TOKEN = $ENV{'PIVOTAL_API_TOKEN'} ;  
   $PROJECT_ID = $appConfig->{'PROJECT_ID'} ; 

   $objInitiator 		= 'UrlSniper::App::Utils::Initiator'->new();
   $appConfig 			= $objInitiator->get('AppConfig') ; 

   p ( $appConfig  ) ; 
   $objConfigurator 	
      = 'UrlSniper::App::Utils::Configurator'->new( $objInitiator->{'ConfFile'} , \$appConfig ) ; 
   $objLogger 			
      = 'UrlSniper::App::Utils::Logger'->new( \$appConfig ) ;

   $objLogger->doLogInfoMsg ( "START MAIN") ; 
   $objLogger->doLogInfoMsg ( "START LOGGING SETTINGS ") ; 
   p ( $appConfig  ) ; 
   $objLogger->doLogInfoMsg ( "STOP  LOGGING SETTINGS ") ; 

	GetOptions(	
	     "rdbms_type:s"		=>\$rdbms_type
	   , "json-file:s"		=>\$json_file
   );
}
#eof doInitialize



# Action !!!
main () ; 

