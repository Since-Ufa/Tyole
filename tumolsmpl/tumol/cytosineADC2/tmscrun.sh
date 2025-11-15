#!/bin/bash -l

# TURBOMOLE needs this variable
export TURBOTMPDIR=/scr/tm/"cytADC2"
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

dscf &> dscf.out  
#ricc2 &> rimp2adc2.out
#escf &> escf.out
# ricc2 -fanal  # edd
##-------- Den Analysis in cub  -------##
# ricc2 -fanal  # edd forCC2&ADC2
# egrad &> egrad.out # ed.cub `$pointval fmt=cub` for highest TDDFT
# riper -proper > riper.out &  # tddft `$pointvalper fmt=cub /  orbs 1 /  k 1 1 1 a 96 r`

# copy files back
#mv spectrum mos *.out CCRE0* *total.cao $submitdir
#mv * $submitdir
#mv spectrum mos exspectrum escf.out sing_a $submitdir

# clean up
cd $submitdir
#rm -r $workdir*

exit 0



