# Multiple hooks
use IPC::Run3;
Plack::App::GitHub::WebHook->new(
    hook => [
        sub { $_[0]->{repository}{name} eq 'foo' },
        sub {
            my ($payload, $event, $delivery, $logger) = @_;
            run3 \@cmd, undef, $logger->{info}, $logger->{error}; 
        },
        sub { 
            print "hello\n";
        }, # some more action
    ]
)->to_app;
