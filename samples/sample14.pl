use GD::Graph::bars;
use GD;
require 'save.pl';

print STDERR "Processing sample 1-4\n";

@data = ( 
    ["1st","2nd","3rd","4th","5th","6th","7th", "8th", "9th"],
    [    5,   12,   24,   33,   19,    8,    6,    15,    21],
    [    1,    2,    5,    6,    3,  1.5,    1,     3,     4]
);

$my_graph = new GD::Graph::bars(500,300);

$my_graph->set( 
	x_label => 'x label',
	y1_label => 'y1 label',
	y2_label => 'y2 label',
	title => 'Using two axes',
	y1_max_value => 40,
	y2_max_value => 8,
	y_tick_number => 8,
	y_label_skip => 2,
	long_ticks => 1,
	two_axes => 1,
	legend_placement => 'RT',
	x_labels_vertical => 1,
	x_label_position => 1/2,

	fgclr => 'white',
	boxclr => 'dblue',
	accentclr => 'dblue',
	dclrs => [qw(lgreen lred)],

	bar_spacing => 2,

	logo => 'logo.' . GD::Graph->export_format,
	logo_position => 'BR',

	transparent => 0,

	l_margin => 10,
	b_margin => 10,
	r_margin => 10,
	t_margin => 10,
);

$my_graph->set_y_label_font('../cetus.ttf', 12);
$my_graph->set_x_label_font('../cetus.ttf', 12);
$my_graph->set_y_axis_font('../cetus.ttf', 10);
$my_graph->set_x_axis_font('../cetus.ttf', 10);
$my_graph->set_title_font('../cetus.ttf', 18);
$my_graph->set_legend_font('../cetus.ttf', 8);

$my_graph->set_legend( 'left axis', 'right axis');
$my_graph->plot(\@data);
save_chart($my_graph, 'sample14');

