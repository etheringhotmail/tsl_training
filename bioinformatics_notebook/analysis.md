###Testing average sequence length
1 Oct 2013   
I wanted to look at the average and combined sequence length for some contigs, so I wrote a script [Fasta_getLength.pl](https://github.com/ethering/tsl_training/blob/e7ead267fd3339b0992e859f71dc850641ba0667/scripts/perl/Fasta_getLength.pl) which calculates these stats and ran in from the command line:   
`bsub -q TSL-Test128 -We 1 "source perl-5.16.3; perl scripts/perl/Fasta_getLength.pl data/refseq.fasta" `  
Output:  
Combined Length = 525 from 5 sequences  
Average Length of contig = 210  

20 Oct 2013  
Oh dear! I've realised that the script was wrong and didn't do what I wanted it to.