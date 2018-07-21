use Plack::App::GitHub::WebHook;
use Data::Dump;
 
# Basic Usage
Plack::App::GitHub::WebHook->new(
    hook => sub {
      my ($payload, $event, $delivery, $log) = @_;
      print "payload : $payload\n";
      print "event   :$event\n";
      print "delivery:$delivery\n";
      print "log     :$log\n";
    for $key ( keys $payload ){
      print $key . "\n";
    }
#      system("/bin/sh /home/imyaman/webhook2firebase-perl/devopskorea.sh");
    },
    events => ['push'],  # optional
    secret => $secret,   # optional
    access => 'github',  # default
)->to_app;
