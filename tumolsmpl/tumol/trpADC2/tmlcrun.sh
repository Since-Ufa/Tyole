#!/bin/bash -l

export PARA_ARCH=SMP
export PATH=$TURBODIR/bin/`sysname`:$PATH
export PARNODES=56

escf > escf.out
#dscf > dscf.out
#ricc2 > ricc2.out
# jobex -level cc2 -ri -c 400

exit 0

