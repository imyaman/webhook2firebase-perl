use Data::Dump qw|dump|;

%hash=( a => '1', b => '2' );
$hashref=\%hash;

for $key (keys %$hashref){
  print $key. "\n";
}
print $hash{'b'};
