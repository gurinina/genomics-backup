# This script checks the qualitiy of our fastq files and performs an alignment to the dna reference with subread.
# To run this 'shell script' you will need to open your terminal and navigate to the directory where this script resides on your computer.
# This should be the same directory where you fastq files and reference fasta file are found.
# Change permissions on your computer so that you can run a shell script by typing: 'chmod 777 subreadMapping.sh' (without the quotes) at the terminal prompt 
# Then type './subreadMapping.sh' (without the quotes) at the prompt.  
# This will begin the process of running each line of code in the shell script.

# first use fastqc to check the quality of our fastq files:
fastqc *.gz -t 4 -o ../FASTQC

# next, we want to build an index from our reference fasta file 
subread-buildindex -o r64/r64bread.index r64/Saccharomyces_cerevisiae.R64-1-1.dna.toplevel.fa.gz

# now map reads to the indexed reference host transcriptome
# use as many 'threads' as your machine will allow in order to speed up the read mapping process.
# note that we're also including the '&>' at the end of each line
# this takes the information that would've been printed to our terminal, and outputs this in a log file that is saved in /data/course_data

# aligning
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458493.fastq.gz -o ../BAM/res458493.bam &> ../BAM/R493.log
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458494.fastq.gz -o ../BAM/res458494.bam &> ../BAM/R494.log
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458495.fastq.gz -o ../BAM/res458495.bam &> ../BAM/R495.log
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458500.fastq.gz -o ../BAM/res458500.bam &> ../BAM/R500.log
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458501.fastq.gz -o ../BAM/res458501.bam &> ../BAM/R501.log
subread-align --sortReadsByCoordinates -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -B 3 -T 16 -i r64/r64bread.index -t 0 -r ERR458502.fastq.gz -o ../BAM/res458502.bam &> ../BAM/R502.log
# then get the reads using featureCounts
#featureCounts -t 'exon' -g 'gene_id' -a Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -T 10 -o counts.txt res458493.bam res458494.bam res458495.bam res458500.bam res458501.bam res458502.bam
featureCounts -O -t gene -g gene_id -a r64/Saccharomyces_cerevisiae.R64-1-1.96.gtf.gz -o ../counts.txt ../BAM/*.bam
# summarize fastqc and subread mapping results in a single summary html using MultiQC
multiqc -d . 

echo "Finished"

