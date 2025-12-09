# Gnuplot script file for plotting data in file "si.dos.dat"
# This file is called plot_dos.gnu
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Ecutwfc parameter calibration"
set xlabel "ecutwfc"
set ylabel "Total energy (Ry)"
#set key 0.01,100
#set xr [0.0:0.022]
#set yr [0:325]
plot    "ecutwfc.txt" using 1:2 title 'Ecut parameter' with linespoints
pause -1 "Hit any key to continue\n"    #so that the code doesn't exit automatically
