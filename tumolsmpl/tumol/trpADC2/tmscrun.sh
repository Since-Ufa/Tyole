#!/bin/bash -l

# TURBOMOLE needs this variable
export TURBOTMPDIR=/scr/tm/"test"
workdir=${TURBOTMPDIR}
submitdir=`pwd`

# copy files to work
mkdir -p $workdir
cd $workdir
cp $submitdir/* $workdir

# set environment
export PARA_ARCH=SMP
export PATH=$TURBODIR/bin/`sysname`:$PATH
export PARNODES=56 

escf &> escf.out  
#dscf &> dscf.out  
#ricc2 &> rimp2adc2.out

# copy files back
mv * $submitdir
#mv spectrum mos exspectrum escf.out sing_a $submitdir
#mv spectrum mos *.out CCRE0* *total.cao $submitdir

# clean up
cd $submitdir
rm -r $workdir*

exit 0



