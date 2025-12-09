# !/bin/bash
echo "Started scf calculation"
../../../src/q-e/bin/pw.x -inp GaAs.scf.in > GaAs.scf.out
grep "total energy" GaAs.scf.out
echo "Started nscf calculation"
../../../src/q-e/bin/pw.x -inp GaAs.nscf.in > GaAs.nscf.out
echo "Started dos calculation"
../../../src/q-e/bin/dos.x -inp GaAs.dos.in > GaAs.dos.out
gnuplot plotter.gnu
