require 'gruff'
g = Gruff::Line.new(1024)
g.title = 'Patches merged per hour'
#g.labels = { 0 => '5/6', 1 => '5/15', 2 => '5/24', 3 => '5/30', 4 => '6/4',
#             5 => '6/12', 6 => '6/21', 7 => '6/28' }
#g.data ' ', [25, 36, 86, 39, 25, 31, 79, 88]
#g.data :Charles, [80, 54, 67, 54, 68, 70, 90, 95]
#g.data :Julie, [22, 29, 35, 38, 36, 40, 46, 57]
#g.data :Jane, [95, 95, 95, 90, 85, 80, 88, 100]
#g.data :Philip, [90, 34, 23, 12, 78, 89, 98, 88]
#g.data :Arthur, [5, 10, 13, 11, 6, 16, 22, 32]

g.labels = {
	0 => '2006',
#	5 => '2007',
	9 => '2008',
#	14 => '2009',
	18 => '2010',
#	22 => '2011',
	28 => '2012',
#	34 => '2013',
	39 => '2014',
#	44 => '2015',
	49 => '2016',
#	55 => '2017',
	61 => '2018',
#	67 => '2019',
	72 => '2020',
}

#g.theme = Gruff::Themes::GREYSCALE
#g.theme = Gruff::Themes::ODEO
g.theme = Gruff::Themes::PASTEL
#g.theme = Gruff::Themes::RAILS_KEYNOTE
#g.theme = Gruff::Themes::THIRTYSEVEN_SIGNALS

g.hide_legend = true
#g.title_font = 'Bitter-Regular'
g.font = 'Bitter'

g.y_axis_increment = 2
g.baseline_value = 0
g.baseline_color = 'white'
g.hide_dots = true
#g.show_vertical_markers = true
#g.hide_lines = true

g.data(' ', [
	# 2006
	3.04,	2.91,	2.62,	2.77,	3.87,
	# 2007
	2.92,	2.58,	3.63,	2.95,
	# 2008
	3.79,	6.15,	4.71,	5.03,	4.96,
	# 2009
	5.49,	6.40,	4.93,	5.46,
	# 2010
	5.39,	4.86,	5.30,	4.95,
	# 2011
	6.28,	5.78,	6.58,	5.96,	3.81,
	# 2012
	6.88,	5.94,	7.21,	7.36,	6.01,	7.04,
	# 2013
	7.38,	7.19,	9.02,	7.09,	7.34,
	# 2014
	6.56,	7.33,	8.17,	9.53,	8.17,	7.53,
	# 2015
	8.34,	6.84,	7.09,	8.15,	8.12,
	# 2016
	7.78,	7.99,	8.94,	7.31,	7.97,	9.65,
	# 2017
	7.76,	7.57,	9.64,	8.6,	8.01,	8.68,
	# 2018
	8.04,	9.01,	8.96,	7.91,	8.24,	9.33,
	# 2019
	7.62,	8.62,	9.28,	8.69,	8.7,
	# 2020
	9.49,	8.38,	9.19,	10.78],
#	)
	'#72AE6E') # green

g.write('patches_per_hour.png')
