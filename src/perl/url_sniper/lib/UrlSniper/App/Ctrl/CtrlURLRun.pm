package UrlSniper::App::Ctrl::CtrlURLRun ; 

	use strict; use warnings;

	my $VERSION = '1.0.0';    #doc at the end

	our $module_trace = 1 ; 

	require Exporter;
	our @ISA = qw(Exporter);
	our $AUTOLOAD =();
	use AutoLoader;

	use Cwd qw/abs_path/;
	use File::Path qw(make_path) ;
   use WWW::Curl::Easy ; 
	use Data::Printer ; 
   use HTTP::Response ; 
	use File::Find ; 
	use Sys::Hostname;
   use Test::More  ; 
	use Carp qw /cluck confess shortmess croak carp/ ; 

	use UrlSniper::App::Utils::IO::FileHandler ; 
	use UrlSniper::App::Utils::Logger ;
   use UrlSniper::App::Data::UrlRunner ; 
   use UrlSniper::App::Utils::ETL::JSONHandler ; 
	
	our $appConfig						= {} ; 
	our $RunDir 						= '' ; 
	our $ProductBaseDir 				= '' ; 
	our $ProductDir 					= '' ; 
	our $ProductInstanceDir 			= ''; 
	our $EnvironmentName 			= '' ; 
	our $ProductName 					= '' ; 
	our $ProductType 					= '' ; 
	our $ProductVersion 				= ''; 
	our $ProductOwner 				= '' ; 
	our $HostName 						= '' ; 
	our $ConfFile 						= '' ; 
	our $objLogger						= {} ; 

=head1 SYNOPSIS

my ( $ret , $response_code , $response_body , $response_content )  = () ; 
( $ret , $response_code , $response_body , $response_content ) 
      = $objUrlSniper->doRunURL( $http_method , $url );

=cut 

=head1 EXPORT

	A list of functions that can be exported.  You can delete this section
	if you don't export anything, such as for a purely object-oriented module.
=cut 

=head1 SUBROUTINES/METHODS

	# -----------------------------------------------------------------------------
	START SUBS 
=cut

# 
# performs an http request 	
#
sub doRunURLs {
   # read the list of urls 
   my $self             = shift ; 
   my $json_file        = shift ; 
   my $msg              = 'START URL run' ; 

   # todo : remove 
   # $json_file              = "$ProductInstanceDir/dat/json/example.postman_collection.json" ; 
   $json_file              = '/vagrant/SENZOIT-POSTMAN-COLLECTION.postman_collection.json' ; 

   $objLogger->doLogInfoMsg ( $msg ) ; 

   my $objJSONHandler = 'UrlSniper::App::Utils::ETL::JSONHandler' ->new( \$appConfig ) ; 
      my ( $ret , $urls )     = () ; 


   ( $ret , $urls) =  $objJSONHandler->doReadJSONFile( $json_file ) ; 

   unless ( $ret == 0 ) {
      $msg = "failed to read json dat !!!" ; 
      $objLogger->doLogErrorMsg ( $msg ) ; 
   }
   else {
      my @url_items_list = $urls->{'item'} ; 
      # -- foreach url do run it
      foreach my $url_list_item ( @url_items_list ) {

         # debug p ( $url_list_item ) if $module_trace == 1 ; 
         
         foreach my $url_item ( @$url_list_item ) {
            p ( $url_item ) if $module_trace == 1 ; 
            my $objUrlSniper    = 'UrlSniper::App::Data::UrlRunner'->new( \$appConfig ) ; 
            my $url              = $url_item->{ 'request' }->{ 'url'} ; 
            my $http_method      = $url_item->{ 'request'}->{'method'} ; 
            my $url_description  = $url_item->{ 'request'}->{'description'} ; 
            my @lst_hdr_pair     = $url_item->{ 'request'}->{'header'} ; 
            my $headers          = {} ; 
            
            print "\n\n" if $module_trace == 1 ; 
            p ( $url_item->{ 'request'}->{'header'} ) if $module_trace == 1 ; 
            print "\n\n" if $module_trace == 1 ; 
            $objLogger->doLogDebugMsg ( "\$url_description : " . $url_description ) ; 

            foreach my $hdr_pair_list_item ( $lst_hdr_pair[0] ) {

               next unless ( $hdr_pair_list_item ) ; 
               # debug print ( 'start hdr_pair_list_item' . "\n") ; 
               # debug p ( $hdr_pair_list_item ) ; 
               # debug print ( 'stop  hdr_pair_list_item' . "\n" ) ; 

               foreach my $header_pair ( @$hdr_pair_list_item ) {
                  next unless ( $header_pair ) ; 
                  print 'start $header_pair' . "\n" if $module_trace == 1 ; 
                  p ( $header_pair ) if $module_trace == 1 ; 
                  print 'stop  $header_pair' . "\n" if $module_trace == 1 ; 
                  my %hs_header_pair   = %$header_pair ; 
                  my $key           = $hs_header_pair{ 'key' } ; 
                  my $value         = $hs_header_pair{ 'value' } ; 

                  next unless ( $key ) ; 
                  next unless ( $value ) ; 
                  #debug print "key is $key \n" ; 
                  #debug print "value is $value \n" ; 
                  
                  $headers->{ $key } = $value ; 
               }
            }


            my $got                 = undef ; 
            my $expected_http_code  = 200 ; 
            my $test_name           = "testing that the ret from the call is $expected_http_code to the url: $url" ; 

            my ( $ret , $response_code , $response_body , $response_content )  = () ; 
            ( $ret , $response_code , $response_body , $response_content ) 
               = $objUrlSniper->doRunURL( $http_method , $url , $headers );

				$objLogger->doLogDebugMsg ( "response_content: " . $response_body)
					if $module_trace == 1 ; 


            $got = $response_code ; 
            cmp_ok($got, '==', $expected_http_code, $test_name);

         }
      }
   }
   done_testing(); 
            my %example_hash = ( "key-1" => "value-1" , "key-2" => "value-2" );
            p ( %example_hash ) ; 

   $msg        = 'STOP  URL run' ; 
   $objLogger->doLogInfoMsg ( $msg ) ; 
}
#eof sub doRunURLs



	#
	# --------------------------------------------------------
	# intializes this object 
	# --------------------------------------------------------
	sub doInitialize {
	   my $self       = shift ; 	
		$appConfig  = ${ shift @_ } if ( @_ );

      $ProductInstanceDir = $appConfig->{ 'ProductInstanceDir' } ; 
		$objLogger 	= "UrlSniper::App::Utils::Logger"->new( \$appConfig ) ; 
	}	
	#eof sub doInitialize
	

=head1 WIP

	
=cut

=head1 SUBROUTINES/METHODS

	STOP  SUBS 
	# -----------------------------------------------------------------------------
=cut


=head2 new
	# -----------------------------------------------------------------------------
	# the constructor
=cut 

	# -----------------------------------------------------------------------------
	# the constructor 
	# -----------------------------------------------------------------------------
	sub new {
      my $class            = shift ;    # Class name is in the first parameter
		$appConfig = ${ shift @_ } if ( @_ );

      # Anonymous hash reference holds instance attributes
      my $self = { }; 
      bless($self, $class);     # Say: $self is a $class

      $self->doInitialize( \$appConfig ) ; 
      return $self;
		
	}  
	#eof const

=head2
	# -----------------------------------------------------------------------------
	# overrided autoloader prints - a run-time error - perldoc AutoLoader
	# -----------------------------------------------------------------------------
=cut
	sub AUTOLOAD {

		my $self = shift;
		no strict 'refs';
		my $name = our $AUTOLOAD;
		*$AUTOLOAD = sub {
			my $msg =
			  "BOOM! BOOM! BOOM! \n RunTime Error !!! \n Undefined Function $name(@_) \n ";
			croak "$self , $msg $!";
		};
		goto &$AUTOLOAD;    # Restart the new routine.
	}   
	# eof sub AUTOLOAD


	# -----------------------------------------------------------------------------
	# return a field's value
	# -----------------------------------------------------------------------------
	sub get {

		my $self = shift;
		my $name = shift;
		croak "\@UrlSniper.pm sub get TRYING to get undefined name" unless $name ;  
		croak "\@UrlSniper.pm sub get TRYING to get undefined value" unless ( $self->{"$name"} ) ; 

		return $self->{ $name };
	}    #eof sub get


	# -----------------------------------------------------------------------------
	# set a field's value
	# -----------------------------------------------------------------------------
	sub set {

		my $self  = shift;
		my $name  = shift;
		my $value = shift;
		$self->{ "$name" } = $value;
	}
	# eof sub set


	# -----------------------------------------------------------------------------
	# return the fields of this obj instance
	# -----------------------------------------------------------------------------
	sub dumpFields {
		my $self      = shift;
		my $strFields = ();
		foreach my $key ( keys %$self ) {
			$strFields .= " $key = $self->{$key} \n ";
		}

		return $strFields;
	}    
	# eof sub dumpFields
		

	# -----------------------------------------------------------------------------
	# wrap any logic here on clean up for this class
	# -----------------------------------------------------------------------------
	sub RunBeforeExit {

		my $self = shift;

		#debug print "%$self RunBeforeExit ! \n";
	}
	#eof sub RunBeforeExit


	# -----------------------------------------------------------------------------
	# called automatically by perl's garbage collector use to know when
	# -----------------------------------------------------------------------------
	sub DESTROY {
		my $self = shift;

		#debug print "the DESTRUCTOR is called  \n" ;
		$self->RunBeforeExit();
		return;
	}   
	#eof sub DESTROY


	# STOP functions
	# =============================================================================

	


1;

__END__

=head1 NAME

UrlSniper 

=head1 SYNOPSIS

use UrlSniper  ; 


=head1 DESCRIPTION
the main purpose is to initiate minimum needed environment for the operation 
of the whole application - man app cnfig hash 

=head2 EXPORT


=head1 SEE ALSO

perldoc perlvars

No mailing list for this module


=head1 AUTHOR

yordan.georgiev@gmail.com

=head1 




# ---------------------------------------------------------
# VersionHistory: 
# ---------------------------------------------------------
#
1.2.0 --- 2014-09-11 20:44:26 -- tests on Windows 
1.1.0 --- 2014-08-27 11:29:25 -- tests passed with Test::More
1.0.0 --- 2014-08-25 08:25:15 -- refactored away from main calling script

=cut 

