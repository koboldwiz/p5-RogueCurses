package RogueCurses::screen;

use Curses;

###no strict 'refs';

sub new {
	my $class = shift;
	my $self = { $win => initscr, };

	$class = ref($class) || $class;

	bless $self, $class;
}

sub update {
	my $self = shift;

	$self->{win}->refresh();
}

### FIXME
sub blit {
	my ($self, $x,$y, $char) = @_;
	$self->{win}->putch($x,$y,$char);
}

sub blit_entity {
	my ($self, $e) = @_;
	$self->blit($e->{x}, $e->{y}, $e->{mychar});
}

sub close {
	my $self = shift;
	endwin;
}
1;
