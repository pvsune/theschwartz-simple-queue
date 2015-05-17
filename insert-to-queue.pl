#!/usr/bin/env perl
use strict;
use warnings;

use TheSchwartz;
use Config::FromHash;

my $config = Config::FromHash->new(
	filenames => ["config.pl"], 
	require_all_files => 1,
);

my $client = TheSchwartz->new(databases => $config->get("db_info"), verbose => 1);

my %args = (message => $config->get("msg")->[int rand 5]);
$client->insert('Worker', \%args); # enqueue job
