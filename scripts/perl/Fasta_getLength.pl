#!/usr/bin/perl -w

use strict;
use warnings;
use Bio::Seq;
use Bio::SeqIO;

my $fastaFile = shift or die;
my $in = Bio::SeqIO->new ( '-format' => 'Fasta', '-file' => $fastaFile);
my $combinedLength = 0;
my $contigCount = 0;
print "id\tlength\n";

while ( my $seq = $in->next_seq() )
{
	#$out->write_seq($seq);
	my $id = $seq->id;
	my $length = $seq->length;
	$combinedLength += $length;
	print "$id\t$length\n";
	$contigCount++;
}

my $averageLength = $combinedLength/$contigCount * 2;
print "Combined Length = $combinedLength from $contigCount sequences\n";
pring "Average Length of contig = $averageLength \n";
