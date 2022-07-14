#!/bin/bash
#SBATCH --job-name=testBLAST		                        # Job name
#SBATCH --partition=batch		                            # Partition (queue) name
#SBATCH --ntasks=1			                                # Single task job
#SBATCH --cpus-per-task=4		                            # Number of cores per task - match this to the num_threads used by BLAST
#SBATCH --mem=10gb			                                # Total memory for job
#SBATCH --time=2:00:00  		                            # Time limit hrs:min:sec
#SBATCH --output=/work/gene8940/mw36149/log.%j			    # Standard output and error log - # replace cbergman with your myid
#SBATCH --mail-user=mw36149@uga.edu                    # Where to send mail - # replace cbergman with your myid
#SBATCH --mail-type=END,FAIL                            # Mail events (BEGIN, END, FAIL, ALL)

#set input and output directory variables
OUTDIR="/work/gene8940/mw36149/"                       # replace cbergman in the following line with your myid
DATADIR="/work/gene8940/instructor_data"

#if output directory doesn't exist, create it
if [ ! -d $OUTDIR ]
then
    mkdir -p $OUTDIR
fi
