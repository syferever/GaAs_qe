# !/bin/bash
echo "Started scf calculation"
../../../src/q-e/bin/pw.x -inp GaAs.scf.in > GaAs.scf.out
grep "total energy" GaAs.scf.out
echo "Started nscf calculation"
../../../src/q-e/bin/pw.x -inp GaAs.nscf.in > GaAs.nscf.out
echo "Started bands calculation"
../../../src/q-e/bin/pw.x -inp GaAs.bands.in > GaAs.bands.out
echo "Started bands post processing"
../../../src/q-e/bin/bands.x -inp GaAs.bands.pp.in > GaAs.bands.pp.out
echo "Started plotbands calculation"
../../../src/q-e/bin/plotband.x < GaAs.plotbands.in > GaAs.plotbands.out
gnuplot GaAs.bands.dat.gnu
