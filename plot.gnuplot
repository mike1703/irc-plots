set terminal pngcairo size 600,350 enhanced font 'Verdana,10'
set output 'lines-nick.png'
set xdata time
set timefmt "%Y-%m"
set format x "%m/%y"
plot "nick.data" using 1:2 with linespoints title "#lines by nick"
