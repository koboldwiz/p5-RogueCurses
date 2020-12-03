package RogueCurses::interface;

use Curses;

sub new {
	my $class = shift;
	my $self = {};

	$class = ref($class) || $class;

	bless $self, $class;
}

sub getchar_and_key {
	my $self = shift;
	my ($ch, $key) = getchar;

	return ($ch, $key);	
}	

1;
