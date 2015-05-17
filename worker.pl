package Worker; # TheSchwartz::Worker subclass
use feature qw/say/;

use base qw/TheSchwartz::Worker/;
use TheSchwartz::Job;

sub work {
    my $class = shift;
    my TheSchwartz::Job $job = shift; # bless the $job to TheSchwartz::Job class

    say $job->arg->{message}; # display args passed
    $job->completed; # TODO: catch failure and do $job->failed($msg, $exit_status)
}



package main; # Main worker class
use TheSchwartz;
use Config::FromHash;

my $config = Config::FromHash->new(
	filenames => ["config.pl"], 
	require_all_files => 1,
);

my $client = TheSchwartz->new( databases => $config->get("db_info") );
$client->can_do("Worker"); # define ability
$client->work; # do the queued job
