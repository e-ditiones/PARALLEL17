#!/bin/bash

#Base directory
#BDIR=/lium/raid01_a/barrault/ancien_nouveau_francais	# base dir of all experiments
BDIR=`pwd`
SDIR=$BDIR/scripts

# Data directory for files to process
FILE=$1
OFILE="$FILE.tok"

# OLD FRENCH side
if [ ! -f $OFILE ]; then
    echo "$FILE"
    cat $FILE | \
      $SDIR/normalize-punctuation.perl -l fr | \
      $SDIR/tokenizer.perl -no-escape -threads 2 -l fr > $OFILE
fi


