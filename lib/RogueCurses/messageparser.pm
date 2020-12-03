package RogueCurses::messageparser;

use Curses;

### NOTE : build in an engine (inference?) for parsing messages which
###	   are displayed then talk about surroundings

sub new {
	my $class = shift;
	my $self = {};

	$class = ref($class) || $class;

	bless $self, $class;
}

sub parse_X {###FIXME
	my $self = shift;
	
}

1;
