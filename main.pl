### BEGIN { $Curses::OldCurses = 1; }

use Curses;

use lib '.';
use lib './lib';
use RogueCurses::screen;
use RogueCurses::interface;

my $screen = new RogueCurses::screen;
my $interface = new RogueCurses::interface;

while (1) {
	my ($chr, $key) = $interface->getcharandkey;
	if ($key == 'q') { last; };

	$screen->update;
};

$screen->close;
