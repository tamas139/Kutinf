set term png size 1280, 720
set output 'euler_diagram.png'
set autoscale

set xlabel 'x tengelyi elmozdulás'
set ylabel 'y tengelyi elmozdulás'
plot 'kimenet.txt' using 1:2 w lines