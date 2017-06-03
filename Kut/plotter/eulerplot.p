set term png size 1280, 720
set output 'euler_diagram.png'
set autoscale

set xlabel 'x tengelyi elmozdulás'
set ylabel 'y tengelyi elmozdulás'
plot ../futtatas/kimenet.txt using 1:2 w lines
//plot 'kimenet.txt' using 1:2 w lines