use Plack::App::GitHub::WebHook;
 
# Basic Usage
Plack::App::GitHub::WebHook->new(
    hook => sub {
        my $payload = shift;
        print "Hello\n";
    },
    events => ['push'],  # optional
    secret => $secret,   # optional
    access => 'github',  # default
)->to_app;
