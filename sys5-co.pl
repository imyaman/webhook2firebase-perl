use Plack::App::GitHub::WebHook;
use Data::Dump;
 
# Basic Usage
Plack::App::GitHub::WebHook->new(
    hook => sub {
      my ($payload, $event, $delivery, $log) = @_;

      if($event eq "push"){
        my $repourl = $payload->{repository}->{url};
        print "it's push on $repourl.\n";

        if($repourl =~ m/sys5-co/){
          system("/bin/sh /home/imyaman/webhook2firebase-perl/sys5-co.sh");
        }
        if($repourl =~ m/pacificmedia/){
          system("/bin/sh /home/imyaman/webhook2firebase-perl/pacificmedia.sh");
        }
      }
    },
    events => ['push'],  # optional
    secret => $secret,   # optional
    access => 'github',  # default
)->to_app;
