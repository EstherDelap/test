#!/bin/bash -l

# Wall clock time
#$ -l h_rt=24:00:00

# Request a single core
#$ -pe smp 1

# Request RAM
#$ -l mem=100G

# Request TMPDIR space
#$ -l tmpfs=20G


# Set up the job array.  In this instance we have requested 10000 tasks
# numbered 1 to 10000.
#$ -t 1-4

#$ -o output

#$ -e errors

# Set working dir
#$ -wd /home/ucanede/Scratch/test

# Job name
#$ -N OTHER

# Parse parameter file to get variables.
#number=$SGE_TASK_ID
#paramfile=/home/ucanede/Scratch/test/params.txt


BASE=$PWD
LOAD=$BASE/input
SAVE=$BASE/results

module load julia/1.9.1

number=$SGE_TASK_ID

cd $TMPDIR
cp $BASE/main.jl $TMPDIR/
julia --project=$BASE main.jl --load=$LOAD/params.txt
mv results.jld2 $SAVE/results.jld2
