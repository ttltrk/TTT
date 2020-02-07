#!/usr/bin/perl
use warnings;
use strict;
use 5.006;

my $project='MCLMPROD';
my $dshome='/opt/IBM/InformationServer115/DSEngine';
open SRC,'<names';
open TAG,'>result';


#`. /opt/IBM/InformationServer115/Server/DSEngine/dsenv`;
#system ". $dshome/dsenv" || die "load dsenv failed \n";

while(<SRC>){
  chomp;
  my $suc= system "$dshome/bin/dsjob -report $project $_ BASIC > temp 2>error";
  system 'echo >>temp';

  if($suc==0){
    print "$_   OK\n";
  }else{
    my $t=`cat error`;
    warn "$_   Failed,code $suc\n";
	warn $t."\n";

	warn 'please ensure you have ran ". /opt/IBM/InformationServer115/Server/DSEngine/dsenv" manually'."\n" if $t=~m/Cannot.+libvmdsapi.so/s;

  }

 # system 'cat temp1 | grep Job > temp' || die "covernt temp file failed\n";
  my $start_time=`cat temp | grep start | cut -d - -f 3 `;
  my $end_time=`cat temp | grep end | cut -d - -f 3 `;
  my $elapsed=`cat temp | grep elapsed | cut -d = -f 2`;
  my $status=`cat temp | grep status`;
  chomp $start_time;
  chomp $end_time;
  chomp $elapsed;
  chomp $status;
  $start_time=~s/(.{1,2})\s(.+)/$2 $1th/;
  $end_time=~s/(.{1,2})\s(.+)/$2 $1th/;
  print TAG "$elapsed, $start_time, $end_time,$status, $_\n";

}