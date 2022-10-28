# Redirection



## Searching files

We discussed in a previous episode how to search within a file using `less`. We can also
search within files without even opening them, using `grep`. `grep` is a command-line
utility for searching plain-text files for lines matching a specific set of 
characters (sometimes called a string) or a particular pattern 
(which can be specified using something called regular expressions). We're not going to work with 
regular expressions in this lesson, and are instead going to specify the strings 
we are searching for.

Let's give it a try!

## Nucleotide abbreviations

The four nucleotides that appear in DNA are abbreviated `A`, `C`, `T` and `G`. 
Unknown nucleotides are represented with the letter `N`. An `N` appearing
in a sequencing file represents a position where the sequencing machine was not able to 
confidently determine the nucleotide in that position. You can think of an `N` as being aNy 
nucleotide at that position in the DNA sequence. 

We'll search for strings inside of our fastq files. Let's first make sure we are in the correct 
directory:


```bash

cd ~/shell_data/untrimmed_fastq/

```

Suppose we want to see how many reads in our file have really bad segments containing 10 consecutive unknown nucleotides (Ns).

## Determining quality

In this lesson, we're going to be manually searching for strings of `N`s within our sequence
results to illustrate some principles of file searching. It can be really useful to do this
type of searching to get a feel for the quality of your sequencing results, however, in your 
research you will most likely use a bioinformatics tool that has a built-in program for
filtering out low-quality reads. You'll learn how to use one such tool in 
[a later lesson](https://datacarpentry.org/wrangling-genomics/02-quality-control/index.html).

Let's search for the string NNNNNNNNNN in the SRR098026 file:


```bash

cd ~/shell_data/untrimmed_fastq/
grep NNNNNNNNNN  SRR098026.fastq

```

```
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNTNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNCNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNANNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNCNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNANNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNANNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANCNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNANNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNGNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNGNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNCNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNTNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNCNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNCNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNTNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANGNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNCNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANCNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNGNNGNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNCNNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNGNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNCNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNTNTNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNGNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## NNNNNNNNNNNGNGNNCGNNNNNNNNNNNNNCNNN
## NNNNNNNNNNNANANAAANNNNNNNNNNNNNANNN
## NNNNNNNNNNNANGCGCGNNNNNNNNNNNNNTNNN
## NNNNNNNNNNNGNGCCAGNNNNNNNNNNNNNANNN
## NNNNNNNNNNNGTTCAGCNNNNNNNNNNNNNANNN
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## NNNNNNNNNNNTGAAATCNNNNNNNNNNNNNCNNN
## NNNNNNNNNNNTCGCTTCNNNNNNNNNNNNNCNNN
## NNNNNNNNNNNTAAGAGANNNNNNNNNNNNNCNNN
## NNNNNNNNNNNGCTATCCNNNNNNNNNNNNNGNNN
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## NNNNNNNNNNNACAGCGANNNNNNNNNNNNNTNNN
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## NNNNNNNNNNNGCTGGCGNNNNNNNNNNNNNANNN
## NNNNNNNNNNNGCTACCTNNNNNNNNNNNNNTNNN
## NNNNNNNNNNCTGGCCGCNNNNNNNNNNNNNANNN
## NNNNNNNNNNGCCCGCCCNNNNNNNNNNNNNTNNN
## NNNNNNNNNNCGGATATCNNNNNNNNNNNNNTNNN
## NNNNNNNNNNGTTGATAANNNNNNNNNNNNAGNNN
## NNNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## GNNNNNNNNNGCTGAAAAANNNNNNNNNNNCANNN
## CNNNNNNNNNTACATCTGGNNNNNNNNNNNCGNNN
## ANNNNNNNNNCAATTTCCTNNNNNNNNNNNACNNN
## CNNNNNNNNNGTATTCACANNNNNNNNNNNTTNNN
## CNNNNNNNNNAGGCGTTGCNNNNNNNNNNNCTNNN
## TNNNNNNNNNTAAAATAAANNNNNNNNNNNAANNN
## CNNNNNNNNNTTGGTGCTGNNNNNNNNNNNAANNN
## ANNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## GNNNNNNNNNTGGCACAATNNNNNNNNNNNCGNNN
## TNNNNNNNNNCGTGGAATTNNNNNNNNNNNATNNN
## ANNNNNNNNNGCATTAAACGNNNNNNNNNNCANTN
## GNNNNNNNNNATCAAAAAGCNNNNNNNNNNGTNAN
## ANNNNNNNNNGTGGCAATATNNNNNNNNNNCCNGN
## ANNNNNNNNNTTCAGCGACTNNNNNNNNNNGTNGN
## CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
```

This command returns a lot of output to the terminal. Every single line in the SRR098026 
file that contains at least 10 consecutive Ns is printed to the terminal, regardless of how long or short the file is. 

We may be interested not only in the actual sequence which contains this string, but 
in the name (or identifier) of that sequence. We discussed in a previous lesson 
that the identifier line immediately precedes the nucleotide sequence for each read
in a FASTQ file. We may also want to inspect the quality scores associated with
each of these reads. To get all of this information, we will return the line 
immediately before each match and the two lines immediately after each match.

We can use the `-B` argument for grep to return a specific number of lines before
each match. The `-A` argument returns a specific number of lines after each matching line. Here we want the line *before* and the two lines *after* each 
matching line, so we add `-B1 -A2` to our grep command:


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq

```

```
## @SRR098026.1 HWUSI-EAS1599_1:2:1:0:968 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.1 HWUSI-EAS1599_1:2:1:0:968 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.2 HWUSI-EAS1599_1:2:1:0:312 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.2 HWUSI-EAS1599_1:2:1:0:312 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.3 HWUSI-EAS1599_1:2:1:0:570 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.3 HWUSI-EAS1599_1:2:1:0:570 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.4 HWUSI-EAS1599_1:2:1:0:758 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.4 HWUSI-EAS1599_1:2:1:0:758 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.5 HWUSI-EAS1599_1:2:1:0:874 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.5 HWUSI-EAS1599_1:2:1:0:874 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.6 HWUSI-EAS1599_1:2:1:0:176 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.6 HWUSI-EAS1599_1:2:1:0:176 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.7 HWUSI-EAS1599_1:2:1:0:206 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.7 HWUSI-EAS1599_1:2:1:0:206 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.8 HWUSI-EAS1599_1:2:1:0:227 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.8 HWUSI-EAS1599_1:2:1:0:227 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.9 HWUSI-EAS1599_1:2:1:0:262 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.9 HWUSI-EAS1599_1:2:1:0:262 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.10 HWUSI-EAS1599_1:2:1:0:500 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.10 HWUSI-EAS1599_1:2:1:0:500 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.11 HWUSI-EAS1599_1:2:1:0:542 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.11 HWUSI-EAS1599_1:2:1:0:542 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.12 HWUSI-EAS1599_1:2:1:0:573 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.12 HWUSI-EAS1599_1:2:1:0:573 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.13 HWUSI-EAS1599_1:2:1:0:578 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.13 HWUSI-EAS1599_1:2:1:0:578 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.14 HWUSI-EAS1599_1:2:1:0:639 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.14 HWUSI-EAS1599_1:2:1:0:639 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.15 HWUSI-EAS1599_1:2:1:0:721 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.15 HWUSI-EAS1599_1:2:1:0:721 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.16 HWUSI-EAS1599_1:2:1:0:742 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.16 HWUSI-EAS1599_1:2:1:0:742 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.17 HWUSI-EAS1599_1:2:1:0:814 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.17 HWUSI-EAS1599_1:2:1:0:814 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.18 HWUSI-EAS1599_1:2:1:0:852 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.18 HWUSI-EAS1599_1:2:1:0:852 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.19 HWUSI-EAS1599_1:2:1:0:940 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.19 HWUSI-EAS1599_1:2:1:0:940 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.20 HWUSI-EAS1599_1:2:1:0:979 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.20 HWUSI-EAS1599_1:2:1:0:979 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.21 HWUSI-EAS1599_1:2:1:0:982 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.21 HWUSI-EAS1599_1:2:1:0:982 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.22 HWUSI-EAS1599_1:2:1:0:999 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.22 HWUSI-EAS1599_1:2:1:0:999 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.23 HWUSI-EAS1599_1:2:1:0:1005 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.23 HWUSI-EAS1599_1:2:1:0:1005 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.24 HWUSI-EAS1599_1:2:1:0:1009 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.24 HWUSI-EAS1599_1:2:1:0:1009 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.25 HWUSI-EAS1599_1:2:1:0:1027 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.25 HWUSI-EAS1599_1:2:1:0:1027 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.26 HWUSI-EAS1599_1:2:1:0:1062 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.26 HWUSI-EAS1599_1:2:1:0:1062 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.27 HWUSI-EAS1599_1:2:1:0:1134 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.27 HWUSI-EAS1599_1:2:1:0:1134 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.28 HWUSI-EAS1599_1:2:1:0:1203 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.28 HWUSI-EAS1599_1:2:1:0:1203 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.29 HWUSI-EAS1599_1:2:1:0:1300 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.29 HWUSI-EAS1599_1:2:1:0:1300 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.30 HWUSI-EAS1599_1:2:1:0:1310 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.30 HWUSI-EAS1599_1:2:1:0:1310 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.31 HWUSI-EAS1599_1:2:1:0:1452 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.31 HWUSI-EAS1599_1:2:1:0:1452 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.32 HWUSI-EAS1599_1:2:1:0:1466 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.32 HWUSI-EAS1599_1:2:1:0:1466 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.33 HWUSI-EAS1599_1:2:1:0:1571 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.33 HWUSI-EAS1599_1:2:1:0:1571 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.34 HWUSI-EAS1599_1:2:1:0:1618 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.34 HWUSI-EAS1599_1:2:1:0:1618 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.35 HWUSI-EAS1599_1:2:1:0:1654 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.35 HWUSI-EAS1599_1:2:1:0:1654 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.36 HWUSI-EAS1599_1:2:1:0:1670 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.36 HWUSI-EAS1599_1:2:1:0:1670 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.37 HWUSI-EAS1599_1:2:1:0:1716 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.37 HWUSI-EAS1599_1:2:1:0:1716 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.38 HWUSI-EAS1599_1:2:1:0:1746 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.38 HWUSI-EAS1599_1:2:1:0:1746 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.39 HWUSI-EAS1599_1:2:1:0:1762 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.39 HWUSI-EAS1599_1:2:1:0:1762 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.40 HWUSI-EAS1599_1:2:1:0:1879 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.40 HWUSI-EAS1599_1:2:1:0:1879 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.41 HWUSI-EAS1599_1:2:1:0:1896 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.41 HWUSI-EAS1599_1:2:1:0:1896 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.42 HWUSI-EAS1599_1:2:1:0:1914 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.42 HWUSI-EAS1599_1:2:1:0:1914 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.43 HWUSI-EAS1599_1:2:1:0:1941 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.43 HWUSI-EAS1599_1:2:1:0:1941 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.44 HWUSI-EAS1599_1:2:1:0:1983 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.44 HWUSI-EAS1599_1:2:1:0:1983 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.45 HWUSI-EAS1599_1:2:1:0:1987 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.45 HWUSI-EAS1599_1:2:1:0:1987 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.46 HWUSI-EAS1599_1:2:1:0:2034 length=35
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.46 HWUSI-EAS1599_1:2:1:0:2034 length=35
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## @SRR098026.47 HWUSI-EAS1599_1:2:1:0:215 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.47 HWUSI-EAS1599_1:2:1:0:215 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.48 HWUSI-EAS1599_1:2:1:0:145 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.48 HWUSI-EAS1599_1:2:1:0:145 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.49 HWUSI-EAS1599_1:2:1:0:1593 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.49 HWUSI-EAS1599_1:2:1:0:1593 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.50 HWUSI-EAS1599_1:2:1:0:1583 length=35
## NNNNNNNNNNNNNTNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.50 HWUSI-EAS1599_1:2:1:0:1583 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.51 HWUSI-EAS1599_1:2:1:0:120 length=35
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.51 HWUSI-EAS1599_1:2:1:0:120 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.52 HWUSI-EAS1599_1:2:1:0:158 length=35
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.52 HWUSI-EAS1599_1:2:1:0:158 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.53 HWUSI-EAS1599_1:2:1:0:1588 length=35
## NNNNNNNNNNNNNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.53 HWUSI-EAS1599_1:2:1:0:1588 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.54 HWUSI-EAS1599_1:2:1:0:257 length=35
## NNNNNNNNNNNNNANNTNNNNNNNNNNNNNNNNNN
## +SRR098026.54 HWUSI-EAS1599_1:2:1:0:257 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.55 HWUSI-EAS1599_1:2:1:0:513 length=35
## NNNNNNNNNNNNNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.55 HWUSI-EAS1599_1:2:1:0:513 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.56 HWUSI-EAS1599_1:2:1:0:558 length=35
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.56 HWUSI-EAS1599_1:2:1:0:558 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.57 HWUSI-EAS1599_1:2:1:0:1382 length=35
## NNNNNNNNNNNNNANNGNNNNNNNNNNNNNNNNNN
## +SRR098026.57 HWUSI-EAS1599_1:2:1:0:1382 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.58 HWUSI-EAS1599_1:2:1:0:454 length=35
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.58 HWUSI-EAS1599_1:2:1:0:454 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.59 HWUSI-EAS1599_1:2:1:0:324 length=35
## NNNNNNNNNNNNNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.59 HWUSI-EAS1599_1:2:1:0:324 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.60 HWUSI-EAS1599_1:2:1:0:546 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.60 HWUSI-EAS1599_1:2:1:0:546 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.61 HWUSI-EAS1599_1:2:1:0:1862 length=35
## NNNNNNNNNNNANCNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.61 HWUSI-EAS1599_1:2:1:0:1862 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.62 HWUSI-EAS1599_1:2:1:0:7 length=35
## NNNNNNNNNNNCNANNTNNNNNNNNNNNNNNNNNN
## +SRR098026.62 HWUSI-EAS1599_1:2:1:0:7 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.63 HWUSI-EAS1599_1:2:1:0:50 length=35
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.63 HWUSI-EAS1599_1:2:1:0:50 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.64 HWUSI-EAS1599_1:2:1:0:56 length=35
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.64 HWUSI-EAS1599_1:2:1:0:56 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.65 HWUSI-EAS1599_1:2:1:0:210 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.65 HWUSI-EAS1599_1:2:1:0:210 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.66 HWUSI-EAS1599_1:2:1:0:287 length=35
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.66 HWUSI-EAS1599_1:2:1:0:287 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.67 HWUSI-EAS1599_1:2:1:0:335 length=35
## NNNNNNNNNNNTNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.67 HWUSI-EAS1599_1:2:1:0:335 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.68 HWUSI-EAS1599_1:2:1:0:347 length=35
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.68 HWUSI-EAS1599_1:2:1:0:347 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.69 HWUSI-EAS1599_1:2:1:0:428 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.69 HWUSI-EAS1599_1:2:1:0:428 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.70 HWUSI-EAS1599_1:2:1:0:473 length=35
## NNNNNNNNNNNCNGNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.70 HWUSI-EAS1599_1:2:1:0:473 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.71 HWUSI-EAS1599_1:2:1:0:576 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.71 HWUSI-EAS1599_1:2:1:0:576 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.72 HWUSI-EAS1599_1:2:1:0:679 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.72 HWUSI-EAS1599_1:2:1:0:679 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.73 HWUSI-EAS1599_1:2:1:0:691 length=35
## NNNNNNNNNNNGNGNNANNNNNNNNNNNNNNNNNN
## +SRR098026.73 HWUSI-EAS1599_1:2:1:0:691 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.74 HWUSI-EAS1599_1:2:1:0:912 length=35
## NNNNNNNNNNNGNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.74 HWUSI-EAS1599_1:2:1:0:912 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.75 HWUSI-EAS1599_1:2:1:0:1047 length=35
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.75 HWUSI-EAS1599_1:2:1:0:1047 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.76 HWUSI-EAS1599_1:2:1:0:1052 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.76 HWUSI-EAS1599_1:2:1:0:1052 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.77 HWUSI-EAS1599_1:2:1:0:1100 length=35
## NNNNNNNNNNNTNTNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.77 HWUSI-EAS1599_1:2:1:0:1100 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.78 HWUSI-EAS1599_1:2:1:0:1112 length=35
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.78 HWUSI-EAS1599_1:2:1:0:1112 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.79 HWUSI-EAS1599_1:2:1:0:1131 length=35
## NNNNNNNNNNNANANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.79 HWUSI-EAS1599_1:2:1:0:1131 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.80 HWUSI-EAS1599_1:2:1:0:1168 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.80 HWUSI-EAS1599_1:2:1:0:1168 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.81 HWUSI-EAS1599_1:2:1:0:1200 length=35
## NNNNNNNNNNNCNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.81 HWUSI-EAS1599_1:2:1:0:1200 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.82 HWUSI-EAS1599_1:2:1:0:1251 length=35
## NNNNNNNNNNNTNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.82 HWUSI-EAS1599_1:2:1:0:1251 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.83 HWUSI-EAS1599_1:2:1:0:1268 length=35
## NNNNNNNNNNNTNTNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.83 HWUSI-EAS1599_1:2:1:0:1268 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.84 HWUSI-EAS1599_1:2:1:0:1281 length=35
## NNNNNNNNNNNANGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.84 HWUSI-EAS1599_1:2:1:0:1281 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.85 HWUSI-EAS1599_1:2:1:0:1340 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.85 HWUSI-EAS1599_1:2:1:0:1340 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.86 HWUSI-EAS1599_1:2:1:0:1372 length=35
## NNNNNNNNNNNTNCNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.86 HWUSI-EAS1599_1:2:1:0:1372 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.87 HWUSI-EAS1599_1:2:1:0:1400 length=35
## NNNNNNNNNNNANCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.87 HWUSI-EAS1599_1:2:1:0:1400 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.88 HWUSI-EAS1599_1:2:1:0:1425 length=35
## NNNNNNNNNNNTNGNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.88 HWUSI-EAS1599_1:2:1:0:1425 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.89 HWUSI-EAS1599_1:2:1:0:1437 length=35
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.89 HWUSI-EAS1599_1:2:1:0:1437 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.90 HWUSI-EAS1599_1:2:1:0:1682 length=35
## NNNNNNNNNNNTNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.90 HWUSI-EAS1599_1:2:1:0:1682 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.91 HWUSI-EAS1599_1:2:1:0:1690 length=35
## NNNNNNNNNNNGNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.91 HWUSI-EAS1599_1:2:1:0:1690 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.92 HWUSI-EAS1599_1:2:1:0:1751 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.92 HWUSI-EAS1599_1:2:1:0:1751 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.93 HWUSI-EAS1599_1:2:1:0:1906 length=35
## NNNNNNNNNNNGNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.93 HWUSI-EAS1599_1:2:1:0:1906 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.94 HWUSI-EAS1599_1:2:1:0:1928 length=35
## NNNNNNNNNNNTNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.94 HWUSI-EAS1599_1:2:1:0:1928 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.95 HWUSI-EAS1599_1:2:1:0:2028 length=35
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.95 HWUSI-EAS1599_1:2:1:0:2028 length=35
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## @SRR098026.96 HWUSI-EAS1599_1:2:1:0:365 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.96 HWUSI-EAS1599_1:2:1:0:365 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.97 HWUSI-EAS1599_1:2:1:0:1779 length=35
## NNNNNNNNNNNCNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.97 HWUSI-EAS1599_1:2:1:0:1779 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.98 HWUSI-EAS1599_1:2:1:0:1476 length=35
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.98 HWUSI-EAS1599_1:2:1:0:1476 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.99 HWUSI-EAS1599_1:2:1:0:833 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.99 HWUSI-EAS1599_1:2:1:0:833 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.100 HWUSI-EAS1599_1:2:1:0:662 length=35
## NNNNNNNNNNNGNGNNCGNNNNNNNNNNNNNCNNN
## +SRR098026.100 HWUSI-EAS1599_1:2:1:0:662 length=35
## !!!!!!!!!!!#!#!!##!!!!!!!!!!!!!#!!!
## @SRR098026.101 HWUSI-EAS1599_1:2:1:0:91 length=35
## NNNNNNNNNNNANANAAANNNNNNNNNNNNNANNN
## +SRR098026.101 HWUSI-EAS1599_1:2:1:0:91 length=35
## !!!!!!!!!!!#!#!###!!!!!!!!!!!!!#!!!
## @SRR098026.102 HWUSI-EAS1599_1:2:1:0:1544 length=35
## NNNNNNNNNNNANGCGCGNNNNNNNNNNNNNTNNN
## +SRR098026.102 HWUSI-EAS1599_1:2:1:0:1544 length=35
## !!!!!!!!!!!#!#####!!!!!!!!!!!!!#!!!
## @SRR098026.103 HWUSI-EAS1599_1:2:1:0:1812 length=35
## NNNNNNNNNNNGNGCCAGNNNNNNNNNNNNNANNN
## +SRR098026.103 HWUSI-EAS1599_1:2:1:0:1812 length=35
## !!!!!!!!!!!#!#####!!!!!!!!!!!!!#!!!
## @SRR098026.104 HWUSI-EAS1599_1:2:1:0:991 length=35
## NNNNNNNNNNNGTTCAGCNNNNNNNNNNNNNANNN
## +SRR098026.104 HWUSI-EAS1599_1:2:1:0:991 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.105 HWUSI-EAS1599_1:2:1:0:86 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.105 HWUSI-EAS1599_1:2:1:0:86 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.106 HWUSI-EAS1599_1:2:1:0:1442 length=35
## NNNNNNNNNNNTGAAATCNNNNNNNNNNNNNCNNN
## +SRR098026.106 HWUSI-EAS1599_1:2:1:0:1442 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.107 HWUSI-EAS1599_1:2:1:0:70 length=35
## NNNNNNNNNNNTCGCTTCNNNNNNNNNNNNNCNNN
## +SRR098026.107 HWUSI-EAS1599_1:2:1:0:70 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.108 HWUSI-EAS1599_1:2:1:0:284 length=35
## NNNNNNNNNNNTAAGAGANNNNNNNNNNNNNCNNN
## +SRR098026.108 HWUSI-EAS1599_1:2:1:0:284 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.109 HWUSI-EAS1599_1:2:1:0:1288 length=35
## NNNNNNNNNNNGCTATCCNNNNNNNNNNNNNGNNN
## +SRR098026.109 HWUSI-EAS1599_1:2:1:0:1288 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.110 HWUSI-EAS1599_1:2:1:0:88 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.110 HWUSI-EAS1599_1:2:1:0:88 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.111 HWUSI-EAS1599_1:2:1:0:1487 length=35
## NNNNNNNNNNNACAGCGANNNNNNNNNNNNNTNNN
## +SRR098026.111 HWUSI-EAS1599_1:2:1:0:1487 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.112 HWUSI-EAS1599_1:2:1:0:139 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.112 HWUSI-EAS1599_1:2:1:0:139 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.113 HWUSI-EAS1599_1:2:1:0:1628 length=35
## NNNNNNNNNNNGCTGGCGNNNNNNNNNNNNNANNN
## +SRR098026.113 HWUSI-EAS1599_1:2:1:0:1628 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.114 HWUSI-EAS1599_1:2:1:0:1161 length=35
## NNNNNNNNNNNGCTACCTNNNNNNNNNNNNNTNNN
## +SRR098026.114 HWUSI-EAS1599_1:2:1:0:1161 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.115 HWUSI-EAS1599_1:2:1:0:1662 length=35
## NNNNNNNNNNCTGGCCGCNNNNNNNNNNNNNANNN
## +SRR098026.115 HWUSI-EAS1599_1:2:1:0:1662 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.116 HWUSI-EAS1599_1:2:1:0:1 length=35
## NNNNNNNNNNGCCCGCCCNNNNNNNNNNNNNTNNN
## +SRR098026.116 HWUSI-EAS1599_1:2:1:0:1 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.117 HWUSI-EAS1599_1:2:1:0:502 length=35
## NNNNNNNNNNCGGATATCNNNNNNNNNNNNNTNNN
## +SRR098026.117 HWUSI-EAS1599_1:2:1:0:502 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.118 HWUSI-EAS1599_1:2:1:0:316 length=35
## NNNNNNNNNNGTTGATAANNNNNNNNNNNNAGNNN
## +SRR098026.118 HWUSI-EAS1599_1:2:1:0:316 length=35
## !!!!!!!!!!########!!!!!!!!!!!!##!!!
## @SRR098026.119 HWUSI-EAS1599_1:2:1:0:361 length=35
## NNNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## +SRR098026.119 HWUSI-EAS1599_1:2:1:0:361 length=35
## !!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.120 HWUSI-EAS1599_1:2:1:0:775 length=35
## GNNNNNNNNNGCTGAAAAANNNNNNNNNNNCANNN
## +SRR098026.120 HWUSI-EAS1599_1:2:1:0:775 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.121 HWUSI-EAS1599_1:2:1:0:1322 length=35
## CNNNNNNNNNTACATCTGGNNNNNNNNNNNCGNNN
## +SRR098026.121 HWUSI-EAS1599_1:2:1:0:1322 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.122 HWUSI-EAS1599_1:2:1:0:1411 length=35
## ANNNNNNNNNCAATTTCCTNNNNNNNNNNNACNNN
## +SRR098026.122 HWUSI-EAS1599_1:2:1:0:1411 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.123 HWUSI-EAS1599_1:2:1:0:1948 length=35
## CNNNNNNNNNGTATTCACANNNNNNNNNNNTTNNN
## +SRR098026.123 HWUSI-EAS1599_1:2:1:0:1948 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.124 HWUSI-EAS1599_1:2:1:0:605 length=35
## CNNNNNNNNNAGGCGTTGCNNNNNNNNNNNCTNNN
## +SRR098026.124 HWUSI-EAS1599_1:2:1:0:605 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.125 HWUSI-EAS1599_1:2:1:0:529 length=35
## TNNNNNNNNNTAAAATAAANNNNNNNNNNNAANNN
## +SRR098026.125 HWUSI-EAS1599_1:2:1:0:529 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.126 HWUSI-EAS1599_1:2:1:0:1710 length=35
## CNNNNNNNNNTTGGTGCTGNNNNNNNNNNNAANNN
## +SRR098026.126 HWUSI-EAS1599_1:2:1:0:1710 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.127 HWUSI-EAS1599_1:2:1:0:795 length=35
## ANNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## +SRR098026.127 HWUSI-EAS1599_1:2:1:0:795 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.128 HWUSI-EAS1599_1:2:1:0:548 length=35
## GNNNNNNNNNTGGCACAATNNNNNNNNNNNCGNNN
## +SRR098026.128 HWUSI-EAS1599_1:2:1:0:548 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.129 HWUSI-EAS1599_1:2:1:0:1824 length=35
## TNNNNNNNNNCGTGGAATTNNNNNNNNNNNATNNN
## +SRR098026.129 HWUSI-EAS1599_1:2:1:0:1824 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.130 HWUSI-EAS1599_1:2:1:0:150 length=35
## ANNNNNNNNNGCATTAAACGNNNNNNNNNNCANTN
## +SRR098026.130 HWUSI-EAS1599_1:2:1:0:150 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.131 HWUSI-EAS1599_1:2:1:0:224 length=35
## GNNNNNNNNNATCAAAAAGCNNNNNNNNNNGTNAN
## +SRR098026.131 HWUSI-EAS1599_1:2:1:0:224 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.132 HWUSI-EAS1599_1:2:1:0:320 length=35
## ANNNNNNNNNGTGGCAATATNNNNNNNNNNCCNGN
## +SRR098026.132 HWUSI-EAS1599_1:2:1:0:320 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## ANNNNNNNNNTTCAGCGACTNNNNNNNNNNGTNGN
## +SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## --
## @SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```

One of the sets of lines returned by this command is: 

@SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
+SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

## Exercise

1. Search for the sequence `GNATNACCACTTCC` in the `SRR098026.fastq` file.
Have your search return all matching lines and the name (or identifier) for each sequence
that contains a match.

2. Search for the sequence `AAGTT` in both FASTQ files.
Have your search return all matching lines and the name (or identifier) for each sequence
that contains a match.

## Solution





## Redirecting output

`grep` allowed us to identify sequences in our FASTQ files that match a particular pattern. 
All of these sequences were printed to our terminal screen, but in order to work with these 
sequences and perform other operations on them, we will need to capture that output in some
way. 

We can do this with something called "redirection". The idea is that
we are taking what would ordinarily be printed to the terminal screen and redirecting it to another location. 
In our case, we want to print this information to a file so that we can look at it later and 
use other commands to analyze this data.

The command for redirecting output to a file is ``.

Let's try out this command and copy all the records (including all four lines of each record) 
in our FASTQ files that contain 
'NNNNNNNNNN' to another file called `> bad_reads.txt`.



```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN  SRR098026.fastq > bad_reads.txt

```

## File extensions

You might be confused about why we're naming our output file with a `.txt` extension. After all,
it will be holding FASTQ formatted data that we're extracting from our FASTQ files. Won't it 
also be a FASTQ file? The answer is, yes - it will be a FASTQ file and it would make sense to 
name it with a `.fastq` extension. However, using a `.fastq` extension will lead us to problems
when we move to using wildcards later in this episode. We'll point out where this becomes
important. For now, it's good that you're thinking about file extensions! 

The prompt should sit there a little bit, and then it should look like nothing
happened. But type `ls`. You should see a new file called `> bad_reads.txt`. 

We can check the number of lines in our new file using a command called `wc`. 
`wc` stands for **word count**. This command counts the number of words, lines, and characters
in a file.


```bash

cd ~/shell_data/untrimmed_fastq/
wc bad_reads.txt

```

```
##      537    1073   23217 bad_reads.txt
```

This will tell us the number of lines, words and characters in the file. If we
want only the number of lines, we can use the `-l` flag for `lines`.


```bash

cd ~/shell_data/untrimmed_fastq/
wc -l bad_reads.txt

```

```
##      537 bad_reads.txt
```

## Exercise

How many sequences are there in `SRR098026.fastq`? Remember that every sequence is formed by four lines.

## Solution






## Exercise

How many sequences in `SRR098026.fastq` contain at least 3 consecutive Ns?

## Solution






We might want to search multiple FASTQ files for sequences that match our search pattern.
However, we need to be careful, because each time we use the `>` command to redirect output
to a file, the new output will replace the output that was already present in the file. 
This is called "overwriting" and, just like you don't want to overwrite your video recording
of your kid's first birthday party, you also want to avoid overwriting your data files.


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq > bad_reads.txt

wc -l bad_reads.txt

```

```
##      537 bad_reads.txt
```


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR097977.fastq > bad_reads.txt
wc -l bad_reads.txt

```

```
##        0 bad_reads.txt
```

Here, the output of our second  call to `wc` shows that we no longer have any lines in our `bad_reads.txt` file. This is 
because the second file we searched (`SRR097977.fastq`) does not contain any lines that match our
search sequence. So our file was overwritten and is now empty.

We can avoid overwriting our files by using the command `>>`. `>>` is known as the "append redirect" and will 
append new output to the end of a file, rather than overwriting it.



```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq > bad_reads.txt

wc -l bad_reads.txt

```

```
##      537 bad_reads.txt
```



```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR097977.fastq >> bad_reads.txt

wc -l bad_reads.txt

```

```
##      537 bad_reads.txt
```

The output of our second call to `wc` shows that we have not overwritten our original data. 

We can also do this with a single line of code by using a wildcard: 


```bash

cd ~/shell_data/untrimmed_fastq/

grep -B1 -A2 NNNNNNNNNN *.fastq > bad_reads.txt
wc -l bad_reads.txt

```

```
##      537 bad_reads.txt
```

## File extensions - part 2

This is where we would have trouble if we were naming our output file with a `.fastq` extension. 
If we already had a file called `bad_reads.fastq` (from our previous `grep` practice) 
and then ran the command above using a `.fastq` extension instead of a `.txt` extension, `grep`
would give us a warning. 


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN *.fastq > bad_reads.fastq

```

grep: input file ‘bad_reads.fastq’ is also the output

`grep` is letting you know that the output file `bad_reads.fastq` is also included in your
`grep` call because it matches the `*.fastq` pattern. Be careful with this as it can lead to
some unintended results.

Since we might have multiple different criteria we want to search for, 
creating a new output file each time has the potential to clutter up our workspace. We also
thus far haven't been interested in the actual contents of those files, only in the number of 
reads that we've found. We created the files to store the reads and then counted the lines in 
the file to see how many reads matched our criteria. There's a way to do this, however, that
doesn't require us to create these intermediate files - the pipe command (`|`).

This is probably not a key on
your keyboard you use very much, so let's all take a minute to find that key. For the standard QWERTY keyboard
layout, the `|` character can be found using the key combination

- <kbdShift</kbd+<kbd\</kbd

What `|` does is take the output that is scrolling by on the terminal and uses that output as input to another command. 
When our output was scrolling by, we might have wished we could slow it down and
look at it, like we can with `less`. Well it turns out that we can! We can redirect our output
from our `grep` call through the `less` command.



```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq | less

```

```
## @SRR098026.1 HWUSI-EAS1599_1:2:1:0:968 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.1 HWUSI-EAS1599_1:2:1:0:968 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.2 HWUSI-EAS1599_1:2:1:0:312 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.2 HWUSI-EAS1599_1:2:1:0:312 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.3 HWUSI-EAS1599_1:2:1:0:570 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.3 HWUSI-EAS1599_1:2:1:0:570 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.4 HWUSI-EAS1599_1:2:1:0:758 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.4 HWUSI-EAS1599_1:2:1:0:758 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.5 HWUSI-EAS1599_1:2:1:0:874 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.5 HWUSI-EAS1599_1:2:1:0:874 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.6 HWUSI-EAS1599_1:2:1:0:176 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.6 HWUSI-EAS1599_1:2:1:0:176 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.7 HWUSI-EAS1599_1:2:1:0:206 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.7 HWUSI-EAS1599_1:2:1:0:206 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.8 HWUSI-EAS1599_1:2:1:0:227 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.8 HWUSI-EAS1599_1:2:1:0:227 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.9 HWUSI-EAS1599_1:2:1:0:262 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.9 HWUSI-EAS1599_1:2:1:0:262 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.10 HWUSI-EAS1599_1:2:1:0:500 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.10 HWUSI-EAS1599_1:2:1:0:500 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.11 HWUSI-EAS1599_1:2:1:0:542 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.11 HWUSI-EAS1599_1:2:1:0:542 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.12 HWUSI-EAS1599_1:2:1:0:573 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.12 HWUSI-EAS1599_1:2:1:0:573 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.13 HWUSI-EAS1599_1:2:1:0:578 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.13 HWUSI-EAS1599_1:2:1:0:578 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.14 HWUSI-EAS1599_1:2:1:0:639 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.14 HWUSI-EAS1599_1:2:1:0:639 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.15 HWUSI-EAS1599_1:2:1:0:721 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.15 HWUSI-EAS1599_1:2:1:0:721 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.16 HWUSI-EAS1599_1:2:1:0:742 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.16 HWUSI-EAS1599_1:2:1:0:742 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.17 HWUSI-EAS1599_1:2:1:0:814 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.17 HWUSI-EAS1599_1:2:1:0:814 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.18 HWUSI-EAS1599_1:2:1:0:852 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.18 HWUSI-EAS1599_1:2:1:0:852 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.19 HWUSI-EAS1599_1:2:1:0:940 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.19 HWUSI-EAS1599_1:2:1:0:940 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.20 HWUSI-EAS1599_1:2:1:0:979 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.20 HWUSI-EAS1599_1:2:1:0:979 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.21 HWUSI-EAS1599_1:2:1:0:982 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.21 HWUSI-EAS1599_1:2:1:0:982 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.22 HWUSI-EAS1599_1:2:1:0:999 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.22 HWUSI-EAS1599_1:2:1:0:999 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.23 HWUSI-EAS1599_1:2:1:0:1005 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.23 HWUSI-EAS1599_1:2:1:0:1005 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.24 HWUSI-EAS1599_1:2:1:0:1009 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.24 HWUSI-EAS1599_1:2:1:0:1009 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.25 HWUSI-EAS1599_1:2:1:0:1027 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.25 HWUSI-EAS1599_1:2:1:0:1027 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.26 HWUSI-EAS1599_1:2:1:0:1062 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.26 HWUSI-EAS1599_1:2:1:0:1062 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.27 HWUSI-EAS1599_1:2:1:0:1134 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.27 HWUSI-EAS1599_1:2:1:0:1134 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.28 HWUSI-EAS1599_1:2:1:0:1203 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.28 HWUSI-EAS1599_1:2:1:0:1203 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.29 HWUSI-EAS1599_1:2:1:0:1300 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.29 HWUSI-EAS1599_1:2:1:0:1300 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.30 HWUSI-EAS1599_1:2:1:0:1310 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.30 HWUSI-EAS1599_1:2:1:0:1310 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.31 HWUSI-EAS1599_1:2:1:0:1452 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.31 HWUSI-EAS1599_1:2:1:0:1452 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.32 HWUSI-EAS1599_1:2:1:0:1466 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.32 HWUSI-EAS1599_1:2:1:0:1466 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.33 HWUSI-EAS1599_1:2:1:0:1571 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.33 HWUSI-EAS1599_1:2:1:0:1571 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.34 HWUSI-EAS1599_1:2:1:0:1618 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.34 HWUSI-EAS1599_1:2:1:0:1618 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.35 HWUSI-EAS1599_1:2:1:0:1654 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.35 HWUSI-EAS1599_1:2:1:0:1654 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.36 HWUSI-EAS1599_1:2:1:0:1670 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.36 HWUSI-EAS1599_1:2:1:0:1670 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.37 HWUSI-EAS1599_1:2:1:0:1716 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.37 HWUSI-EAS1599_1:2:1:0:1716 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.38 HWUSI-EAS1599_1:2:1:0:1746 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.38 HWUSI-EAS1599_1:2:1:0:1746 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.39 HWUSI-EAS1599_1:2:1:0:1762 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.39 HWUSI-EAS1599_1:2:1:0:1762 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.40 HWUSI-EAS1599_1:2:1:0:1879 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.40 HWUSI-EAS1599_1:2:1:0:1879 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.41 HWUSI-EAS1599_1:2:1:0:1896 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.41 HWUSI-EAS1599_1:2:1:0:1896 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.42 HWUSI-EAS1599_1:2:1:0:1914 length=35
## NNNNNNNNNNNNNNNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.42 HWUSI-EAS1599_1:2:1:0:1914 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.43 HWUSI-EAS1599_1:2:1:0:1941 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.43 HWUSI-EAS1599_1:2:1:0:1941 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.44 HWUSI-EAS1599_1:2:1:0:1983 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.44 HWUSI-EAS1599_1:2:1:0:1983 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.45 HWUSI-EAS1599_1:2:1:0:1987 length=35
## NNNNNNNNNNNNNNNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.45 HWUSI-EAS1599_1:2:1:0:1987 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.46 HWUSI-EAS1599_1:2:1:0:2034 length=35
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.46 HWUSI-EAS1599_1:2:1:0:2034 length=35
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## @SRR098026.47 HWUSI-EAS1599_1:2:1:0:215 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.47 HWUSI-EAS1599_1:2:1:0:215 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.48 HWUSI-EAS1599_1:2:1:0:145 length=35
## NNNNNNNNNNNNNNNNANNNNNNNNNNNNNNNNNN
## +SRR098026.48 HWUSI-EAS1599_1:2:1:0:145 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.49 HWUSI-EAS1599_1:2:1:0:1593 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.49 HWUSI-EAS1599_1:2:1:0:1593 length=35
## !!!!!!!!!!!!!!!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.50 HWUSI-EAS1599_1:2:1:0:1583 length=35
## NNNNNNNNNNNNNTNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.50 HWUSI-EAS1599_1:2:1:0:1583 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.51 HWUSI-EAS1599_1:2:1:0:120 length=35
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.51 HWUSI-EAS1599_1:2:1:0:120 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.52 HWUSI-EAS1599_1:2:1:0:158 length=35
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.52 HWUSI-EAS1599_1:2:1:0:158 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.53 HWUSI-EAS1599_1:2:1:0:1588 length=35
## NNNNNNNNNNNNNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.53 HWUSI-EAS1599_1:2:1:0:1588 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.54 HWUSI-EAS1599_1:2:1:0:257 length=35
## NNNNNNNNNNNNNANNTNNNNNNNNNNNNNNNNNN
## +SRR098026.54 HWUSI-EAS1599_1:2:1:0:257 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.55 HWUSI-EAS1599_1:2:1:0:513 length=35
## NNNNNNNNNNNNNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.55 HWUSI-EAS1599_1:2:1:0:513 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.56 HWUSI-EAS1599_1:2:1:0:558 length=35
## NNNNNNNNNNNNNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.56 HWUSI-EAS1599_1:2:1:0:558 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.57 HWUSI-EAS1599_1:2:1:0:1382 length=35
## NNNNNNNNNNNNNANNGNNNNNNNNNNNNNNNNNN
## +SRR098026.57 HWUSI-EAS1599_1:2:1:0:1382 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.58 HWUSI-EAS1599_1:2:1:0:454 length=35
## NNNNNNNNNNNNNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.58 HWUSI-EAS1599_1:2:1:0:454 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.59 HWUSI-EAS1599_1:2:1:0:324 length=35
## NNNNNNNNNNNNNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.59 HWUSI-EAS1599_1:2:1:0:324 length=35
## !!!!!!!!!!!!!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.60 HWUSI-EAS1599_1:2:1:0:546 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.60 HWUSI-EAS1599_1:2:1:0:546 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.61 HWUSI-EAS1599_1:2:1:0:1862 length=35
## NNNNNNNNNNNANCNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.61 HWUSI-EAS1599_1:2:1:0:1862 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.62 HWUSI-EAS1599_1:2:1:0:7 length=35
## NNNNNNNNNNNCNANNTNNNNNNNNNNNNNNNNNN
## +SRR098026.62 HWUSI-EAS1599_1:2:1:0:7 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.63 HWUSI-EAS1599_1:2:1:0:50 length=35
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.63 HWUSI-EAS1599_1:2:1:0:50 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.64 HWUSI-EAS1599_1:2:1:0:56 length=35
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.64 HWUSI-EAS1599_1:2:1:0:56 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.65 HWUSI-EAS1599_1:2:1:0:210 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.65 HWUSI-EAS1599_1:2:1:0:210 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.66 HWUSI-EAS1599_1:2:1:0:287 length=35
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.66 HWUSI-EAS1599_1:2:1:0:287 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.67 HWUSI-EAS1599_1:2:1:0:335 length=35
## NNNNNNNNNNNTNANNANNNNNNNNNNNNNNNNNN
## +SRR098026.67 HWUSI-EAS1599_1:2:1:0:335 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.68 HWUSI-EAS1599_1:2:1:0:347 length=35
## NNNNNNNNNNNGNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.68 HWUSI-EAS1599_1:2:1:0:347 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.69 HWUSI-EAS1599_1:2:1:0:428 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.69 HWUSI-EAS1599_1:2:1:0:428 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.70 HWUSI-EAS1599_1:2:1:0:473 length=35
## NNNNNNNNNNNCNGNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.70 HWUSI-EAS1599_1:2:1:0:473 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.71 HWUSI-EAS1599_1:2:1:0:576 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.71 HWUSI-EAS1599_1:2:1:0:576 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.72 HWUSI-EAS1599_1:2:1:0:679 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.72 HWUSI-EAS1599_1:2:1:0:679 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.73 HWUSI-EAS1599_1:2:1:0:691 length=35
## NNNNNNNNNNNGNGNNANNNNNNNNNNNNNNNNNN
## +SRR098026.73 HWUSI-EAS1599_1:2:1:0:691 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.74 HWUSI-EAS1599_1:2:1:0:912 length=35
## NNNNNNNNNNNGNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.74 HWUSI-EAS1599_1:2:1:0:912 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.75 HWUSI-EAS1599_1:2:1:0:1047 length=35
## NNNNNNNNNNNTNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.75 HWUSI-EAS1599_1:2:1:0:1047 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.76 HWUSI-EAS1599_1:2:1:0:1052 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.76 HWUSI-EAS1599_1:2:1:0:1052 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.77 HWUSI-EAS1599_1:2:1:0:1100 length=35
## NNNNNNNNNNNTNTNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.77 HWUSI-EAS1599_1:2:1:0:1100 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.78 HWUSI-EAS1599_1:2:1:0:1112 length=35
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.78 HWUSI-EAS1599_1:2:1:0:1112 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.79 HWUSI-EAS1599_1:2:1:0:1131 length=35
## NNNNNNNNNNNANANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.79 HWUSI-EAS1599_1:2:1:0:1131 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.80 HWUSI-EAS1599_1:2:1:0:1168 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.80 HWUSI-EAS1599_1:2:1:0:1168 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.81 HWUSI-EAS1599_1:2:1:0:1200 length=35
## NNNNNNNNNNNCNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.81 HWUSI-EAS1599_1:2:1:0:1200 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.82 HWUSI-EAS1599_1:2:1:0:1251 length=35
## NNNNNNNNNNNTNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.82 HWUSI-EAS1599_1:2:1:0:1251 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.83 HWUSI-EAS1599_1:2:1:0:1268 length=35
## NNNNNNNNNNNTNTNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.83 HWUSI-EAS1599_1:2:1:0:1268 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.84 HWUSI-EAS1599_1:2:1:0:1281 length=35
## NNNNNNNNNNNANGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.84 HWUSI-EAS1599_1:2:1:0:1281 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.85 HWUSI-EAS1599_1:2:1:0:1340 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.85 HWUSI-EAS1599_1:2:1:0:1340 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.86 HWUSI-EAS1599_1:2:1:0:1372 length=35
## NNNNNNNNNNNTNCNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.86 HWUSI-EAS1599_1:2:1:0:1372 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.87 HWUSI-EAS1599_1:2:1:0:1400 length=35
## NNNNNNNNNNNANCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.87 HWUSI-EAS1599_1:2:1:0:1400 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.88 HWUSI-EAS1599_1:2:1:0:1425 length=35
## NNNNNNNNNNNTNGNNGNNNNNNNNNNNNNNNNNN
## +SRR098026.88 HWUSI-EAS1599_1:2:1:0:1425 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.89 HWUSI-EAS1599_1:2:1:0:1437 length=35
## NNNNNNNNNNNCNANNCNNNNNNNNNNNNNNNNNN
## +SRR098026.89 HWUSI-EAS1599_1:2:1:0:1437 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.90 HWUSI-EAS1599_1:2:1:0:1682 length=35
## NNNNNNNNNNNTNCNNANNNNNNNNNNNNNNNNNN
## +SRR098026.90 HWUSI-EAS1599_1:2:1:0:1682 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.91 HWUSI-EAS1599_1:2:1:0:1690 length=35
## NNNNNNNNNNNGNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.91 HWUSI-EAS1599_1:2:1:0:1690 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.92 HWUSI-EAS1599_1:2:1:0:1751 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.92 HWUSI-EAS1599_1:2:1:0:1751 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.93 HWUSI-EAS1599_1:2:1:0:1906 length=35
## NNNNNNNNNNNGNCNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.93 HWUSI-EAS1599_1:2:1:0:1906 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.94 HWUSI-EAS1599_1:2:1:0:1928 length=35
## NNNNNNNNNNNTNTNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.94 HWUSI-EAS1599_1:2:1:0:1928 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.95 HWUSI-EAS1599_1:2:1:0:2028 length=35
## NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.95 HWUSI-EAS1599_1:2:1:0:2028 length=35
## !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
## @SRR098026.96 HWUSI-EAS1599_1:2:1:0:365 length=35
## NNNNNNNNNNNANANNANNNNNNNNNNNNNNNNNN
## +SRR098026.96 HWUSI-EAS1599_1:2:1:0:365 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.97 HWUSI-EAS1599_1:2:1:0:1779 length=35
## NNNNNNNNNNNCNGNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.97 HWUSI-EAS1599_1:2:1:0:1779 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.98 HWUSI-EAS1599_1:2:1:0:1476 length=35
## NNNNNNNNNNNCNGNNCNNNNNNNNNNNNNNNNNN
## +SRR098026.98 HWUSI-EAS1599_1:2:1:0:1476 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.99 HWUSI-EAS1599_1:2:1:0:833 length=35
## NNNNNNNNNNNCNCNNTNNNNNNNNNNNNNNNNNN
## +SRR098026.99 HWUSI-EAS1599_1:2:1:0:833 length=35
## !!!!!!!!!!!#!#!!#!!!!!!!!!!!!!!!!!!
## @SRR098026.100 HWUSI-EAS1599_1:2:1:0:662 length=35
## NNNNNNNNNNNGNGNNCGNNNNNNNNNNNNNCNNN
## +SRR098026.100 HWUSI-EAS1599_1:2:1:0:662 length=35
## !!!!!!!!!!!#!#!!##!!!!!!!!!!!!!#!!!
## @SRR098026.101 HWUSI-EAS1599_1:2:1:0:91 length=35
## NNNNNNNNNNNANANAAANNNNNNNNNNNNNANNN
## +SRR098026.101 HWUSI-EAS1599_1:2:1:0:91 length=35
## !!!!!!!!!!!#!#!###!!!!!!!!!!!!!#!!!
## @SRR098026.102 HWUSI-EAS1599_1:2:1:0:1544 length=35
## NNNNNNNNNNNANGCGCGNNNNNNNNNNNNNTNNN
## +SRR098026.102 HWUSI-EAS1599_1:2:1:0:1544 length=35
## !!!!!!!!!!!#!#####!!!!!!!!!!!!!#!!!
## @SRR098026.103 HWUSI-EAS1599_1:2:1:0:1812 length=35
## NNNNNNNNNNNGNGCCAGNNNNNNNNNNNNNANNN
## +SRR098026.103 HWUSI-EAS1599_1:2:1:0:1812 length=35
## !!!!!!!!!!!#!#####!!!!!!!!!!!!!#!!!
## @SRR098026.104 HWUSI-EAS1599_1:2:1:0:991 length=35
## NNNNNNNNNNNGTTCAGCNNNNNNNNNNNNNANNN
## +SRR098026.104 HWUSI-EAS1599_1:2:1:0:991 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.105 HWUSI-EAS1599_1:2:1:0:86 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.105 HWUSI-EAS1599_1:2:1:0:86 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.106 HWUSI-EAS1599_1:2:1:0:1442 length=35
## NNNNNNNNNNNTGAAATCNNNNNNNNNNNNNCNNN
## +SRR098026.106 HWUSI-EAS1599_1:2:1:0:1442 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.107 HWUSI-EAS1599_1:2:1:0:70 length=35
## NNNNNNNNNNNTCGCTTCNNNNNNNNNNNNNCNNN
## +SRR098026.107 HWUSI-EAS1599_1:2:1:0:70 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.108 HWUSI-EAS1599_1:2:1:0:284 length=35
## NNNNNNNNNNNTAAGAGANNNNNNNNNNNNNCNNN
## +SRR098026.108 HWUSI-EAS1599_1:2:1:0:284 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.109 HWUSI-EAS1599_1:2:1:0:1288 length=35
## NNNNNNNNNNNGCTATCCNNNNNNNNNNNNNGNNN
## +SRR098026.109 HWUSI-EAS1599_1:2:1:0:1288 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.110 HWUSI-EAS1599_1:2:1:0:88 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.110 HWUSI-EAS1599_1:2:1:0:88 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.111 HWUSI-EAS1599_1:2:1:0:1487 length=35
## NNNNNNNNNNNACAGCGANNNNNNNNNNNNNTNNN
## +SRR098026.111 HWUSI-EAS1599_1:2:1:0:1487 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.112 HWUSI-EAS1599_1:2:1:0:139 length=35
## NNNNNNNNNNNAAAAAAANNNNNNNNNNNNNANNN
## +SRR098026.112 HWUSI-EAS1599_1:2:1:0:139 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.113 HWUSI-EAS1599_1:2:1:0:1628 length=35
## NNNNNNNNNNNGCTGGCGNNNNNNNNNNNNNANNN
## +SRR098026.113 HWUSI-EAS1599_1:2:1:0:1628 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.114 HWUSI-EAS1599_1:2:1:0:1161 length=35
## NNNNNNNNNNNGCTACCTNNNNNNNNNNNNNTNNN
## +SRR098026.114 HWUSI-EAS1599_1:2:1:0:1161 length=35
## !!!!!!!!!!!#######!!!!!!!!!!!!!#!!!
## @SRR098026.115 HWUSI-EAS1599_1:2:1:0:1662 length=35
## NNNNNNNNNNCTGGCCGCNNNNNNNNNNNNNANNN
## +SRR098026.115 HWUSI-EAS1599_1:2:1:0:1662 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.116 HWUSI-EAS1599_1:2:1:0:1 length=35
## NNNNNNNNNNGCCCGCCCNNNNNNNNNNNNNTNNN
## +SRR098026.116 HWUSI-EAS1599_1:2:1:0:1 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.117 HWUSI-EAS1599_1:2:1:0:502 length=35
## NNNNNNNNNNCGGATATCNNNNNNNNNNNNNTNNN
## +SRR098026.117 HWUSI-EAS1599_1:2:1:0:502 length=35
## !!!!!!!!!!########!!!!!!!!!!!!!#!!!
## @SRR098026.118 HWUSI-EAS1599_1:2:1:0:316 length=35
## NNNNNNNNNNGTTGATAANNNNNNNNNNNNAGNNN
## +SRR098026.118 HWUSI-EAS1599_1:2:1:0:316 length=35
## !!!!!!!!!!########!!!!!!!!!!!!##!!!
## @SRR098026.119 HWUSI-EAS1599_1:2:1:0:361 length=35
## NNNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## +SRR098026.119 HWUSI-EAS1599_1:2:1:0:361 length=35
## !!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.120 HWUSI-EAS1599_1:2:1:0:775 length=35
## GNNNNNNNNNGCTGAAAAANNNNNNNNNNNCANNN
## +SRR098026.120 HWUSI-EAS1599_1:2:1:0:775 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.121 HWUSI-EAS1599_1:2:1:0:1322 length=35
## CNNNNNNNNNTACATCTGGNNNNNNNNNNNCGNNN
## +SRR098026.121 HWUSI-EAS1599_1:2:1:0:1322 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.122 HWUSI-EAS1599_1:2:1:0:1411 length=35
## ANNNNNNNNNCAATTTCCTNNNNNNNNNNNACNNN
## +SRR098026.122 HWUSI-EAS1599_1:2:1:0:1411 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.123 HWUSI-EAS1599_1:2:1:0:1948 length=35
## CNNNNNNNNNGTATTCACANNNNNNNNNNNTTNNN
## +SRR098026.123 HWUSI-EAS1599_1:2:1:0:1948 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.124 HWUSI-EAS1599_1:2:1:0:605 length=35
## CNNNNNNNNNAGGCGTTGCNNNNNNNNNNNCTNNN
## +SRR098026.124 HWUSI-EAS1599_1:2:1:0:605 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.125 HWUSI-EAS1599_1:2:1:0:529 length=35
## TNNNNNNNNNTAAAATAAANNNNNNNNNNNAANNN
## +SRR098026.125 HWUSI-EAS1599_1:2:1:0:529 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.126 HWUSI-EAS1599_1:2:1:0:1710 length=35
## CNNNNNNNNNTTGGTGCTGNNNNNNNNNNNAANNN
## +SRR098026.126 HWUSI-EAS1599_1:2:1:0:1710 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.127 HWUSI-EAS1599_1:2:1:0:795 length=35
## ANNNNNNNNNAAAAAAAAANNNNNNNNNNNAANNN
## +SRR098026.127 HWUSI-EAS1599_1:2:1:0:795 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.128 HWUSI-EAS1599_1:2:1:0:548 length=35
## GNNNNNNNNNTGGCACAATNNNNNNNNNNNCGNNN
## +SRR098026.128 HWUSI-EAS1599_1:2:1:0:548 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.129 HWUSI-EAS1599_1:2:1:0:1824 length=35
## TNNNNNNNNNCGTGGAATTNNNNNNNNNNNATNNN
## +SRR098026.129 HWUSI-EAS1599_1:2:1:0:1824 length=35
## #!!!!!!!!!#########!!!!!!!!!!!##!!!
## @SRR098026.130 HWUSI-EAS1599_1:2:1:0:150 length=35
## ANNNNNNNNNGCATTAAACGNNNNNNNNNNCANTN
## +SRR098026.130 HWUSI-EAS1599_1:2:1:0:150 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.131 HWUSI-EAS1599_1:2:1:0:224 length=35
## GNNNNNNNNNATCAAAAAGCNNNNNNNNNNGTNAN
## +SRR098026.131 HWUSI-EAS1599_1:2:1:0:224 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.132 HWUSI-EAS1599_1:2:1:0:320 length=35
## ANNNNNNNNNGTGGCAATATNNNNNNNNNNCCNGN
## +SRR098026.132 HWUSI-EAS1599_1:2:1:0:320 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## ANNNNNNNNNTTCAGCGACTNNNNNNNNNNGTNGN
## +SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## --
## @SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```

We can now see the output from our `grep` call within the `less` interface. We can use the up and down arrows 
to scroll through the output and use `q` to exit `less`.

If we don't want to create a file before counting lines of output from our `grep` search, we could directly pipe
the output of the grep search to the command `wc -l`. This can be helpful for investigating your output if you are not sure
you would like to save it to a file. 


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq | wc -l 

```

```
##      537
```

Because we asked `grep` for all four lines of each FASTQ record, we need to divide the output by
four to get the number of sequences that match our search pattern. Since 802 / 4 = 200.5 and we
are expecting an integer number of records, there is something added or missing in `> bad_reads.txt`. 
If we explore `> bad_reads.txt` using `less`, we might be able to notice what is causing the uneven 
number of lines. Luckily, this issue happens by the end of the file so we can also spot it with `tail`.


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq > bad_reads.txt

tail bad_reads.txt

```

```
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## ANNNNNNNNNTTCAGCGACTNNNNNNNNNNGTNGN
## +SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## --
## @SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```

The sixth line in the output displays "--" which is the default action for `grep` to separate groups of 
lines matching the pattern, and indicate groups of lines which did not match the pattern so are not displayed. 
To fix this issue, we can redirect the output of grep to a second instance of `grep` as follows.


```bash

cd ~/shell_data/untrimmed_fastq/
grep -B1 -A2 NNNNNNNNNN SRR098026.fastq | grep -v '^--' > bad_reads.txt
tail bad_reads.txt

```

```
## +SRR098026.132 HWUSI-EAS1599_1:2:1:0:320 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## ANNNNNNNNNTTCAGCGACTNNNNNNNNNNGTNGN
## +SRR098026.133 HWUSI-EAS1599_1:2:1:0:1978 length=35
## #!!!!!!!!!##########!!!!!!!!!!##!#!
## @SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## CNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
## +SRR098026.177 HWUSI-EAS1599_1:2:1:1:2025 length=35
## #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
```


The `-v` option in the second `grep` search stands for `--invert-match` meaning `grep` will now only display the 
lines which do not match the searched pattern, in this case `'^--'`. The caret (`^`) is an **anchoring** 
character matching the beginning of the line, and the pattern has to be enclose by single quotes so `grep` does 
not interpret the pattern as an extended option (starting with --).

## Custom `grep` control

Use `man grep` to read more about other options to customize the output of `grep` including extended options, 
anchoring characters, and much more.

Redirecting output is often not intuitive, and can take some time to get used to. Once you're 
comfortable with redirection, however, you'll be able to combine any number of commands to
do all sorts of exciting things with your data!

None of the command line programs we've been learning
do anything all that impressive on their own, but when you start chaining
them together, you can do some really powerful things very
efficiently. 

## File manipulation and more practices with pipes

To practice a bit more with the tools we’ve added to our tool kit so far and learn a few extra ones you can follow [this extra lesson](https://datacarpentry.org/shell-genomics/Extra_lesson/index.html) which uses the SRA metadata file. 

## Writing for loops

Loops are key to productivity improvements through automation as they allow us to execute commands repeatedly. 
Similar to wildcards and tab completion, using loops also reduces the amount of typing (and typing mistakes). 
Loops are helpful when performing operations on groups of sequencing files, such as unzipping or trimming multiple
files. We will use loops for these purposes in subsequent analyses, but will cover the basics of them for now.

When the shell sees the keyword `for`, it knows to repeat a command (or group of commands) once for each item in a list. 
Each time the loop runs (called an iteration), an item in the list is assigned in sequence to the **variable**, and 
the commands inside the loop are executed, before moving on to the next item in the list. Inside the loop, we call for 
the variable's value by putting `$` in front of it. The `$` tells the shell interpreter to treat the **variable**
as a variable name and substitute its value in its place, rather than treat it as text or an external command. In shell programming, this is usually called "expanding" the variable.

Sometimes, we want to expand a variable without any whitespace to its right.
Suppose we have a variable named `foo` that contains the text `abc`, and would
like to expand `foo` to create the text `abcEFG`.


```bash

foo=abc

echo foo is $foo

echo foo is $fooEFG      # doesn't work

```

The interpreter is trying to expand a variable named `fooEFG`, which (probably)
doesn't exist. We can avoid this problem by enclosing the variable name in 
braces (`{` and `}`, sometimes called "squiggle braces"). `bash` treats the `#`
character as a comment character. Any text on a line after a `#` is ignored by
bash when evaluating the text as code.


```bash

foo=abc

echo foo is $foo

echo foo is ${foo}EFG 

```

```
## foo is abc
## foo is abcEFG
```

now it works!

Let's write a for loop to show us the first two lines of the fastq files we downloaded earlier. You will notice the shell prompt changes from `$` to `` and back again as we were typing in our loop. The second prompt, `>`, is different to remind us that we haven’t finished typing a complete command yet. A semicolon, `;`, can be used to separate two commands written on a single line.


```bash

cd ~/shell_data/untrimmed_fastq/

for filename in *.fastq
do
head -n 2 ${filename}
done

```

```
## @SRR097977.1 209DTAAXX_Lenski2_1_7:8:3:710:178 length=36
## TATTCTGCCATAATGAAATTCGCCACTTGTTAGTGT
## @SRR098026.1 HWUSI-EAS1599_1:2:1:0:968 length=35
## NNNNNNNNNNNNNNNNCNNNNNNNNNNNNNNNNNN
```

The for loop begins with the formula `for <variablein <group to iterate over`. In this case, the word `filename` is designated 
<<<<<<< HEAD
as the variable to be used over each iteration. In our case `SRR097977.fastq` and `SRR098026.fastq` will be substituted for `filename` 
=======
as the variable to be used over each iteration. In our case `SRR098026.fastq` and `SRR097977.fastq` will be substituted for `filename` 
>>>>>>> 63d3bc2 (first commit)
because they fit the pattern of ending with .fastq in the directory we've specified. The next line of the for loop is `do`. The next line is 
the code that we want to execute. We are telling the loop to print the first two lines of each variable we iterate over. Finally, the
word `done` ends the loop.

After executing the loop, you should see the first two lines of both fastq files printed to the terminal. Let's create a loop that 
will save this information to a file.


```bash

cd ~/shell_data/untrimmed_fastq/

for filename in *.fastq
do
head -n 2 ${filename} > seq_info.txt
done

```

When writing a loop, you will not be able to return to previous lines once you have pressed Enter. Remember that we can cancel the current command using

- <kbdCtrl</kbd+<kbdC</kbd

If you notice a mistake that is going to prevent your loop for executing correctly.

Note that we are using `>` to append the text to our `seq_info.txt` file. If we used `>`, the `seq_info.txt` file would be rewritten
every time the loop iterates, so it would only have text from the last variable used. Instead, `>>` adds to the end of the file.

## Using Basename in for loops
Basename is a function in UNIX that is helpful for removing a uniform part of a name from a list of files. In this case, we will use basename to remove the `.fastq` extension from the files that we’ve been working with. 


```bash

cd ~/shell_data/untrimmed_fastq/
basename SRR097977.fastq .fastq

```

```
## SRR097977
```

We see that this returns just the SRR accession, and no longer has the .fastq file extension on it.

SRR097977

If we try the same thing but use `.fasta` as the file extension instead, nothing happens. This is because basename only works when it exactly matches a string in the file.


```bash

cd ~/shell_data/untrimmed_fastq/
basename SRR097977.fastq .fasta

```

```
## SRR097977.fastq
```

Basename is really powerful when used in a for loop. It allows to access just the file prefix, which you can use to name things. Let's try this.

Inside our for loop, we create a new name variable. We call the basename function inside the parenthesis, then give our variable name from the for loop, in this case `${filename}`, and finally state that `.fastq` should be removed from the file name. It’s important to note that we’re not changing the actual files, we’re creating a new variable called name. The line echo $name will print to the terminal the variable name each time the for loop runs. Because we are iterating over two files, we expect to see two lines of output.


```bash

cd ~/shell_data/untrimmed_fastq/

for filename in *.fastq
do
name=$(basename ${filename} .fastq)
echo ${name}
done

```

```
## SRR097977
## SRR098026
```

## Exercise

Print the file prefix of all of the `.txt` files in our current directory.

## Solution





One way this is really useful is to move files. Let's rename all of our .txt files using `mv` so that they have the years on them, which will document when we created them. 


```bash

cd ~/shell_data/untrimmed_fastq/

for filename in *.txt
do
name=$(basename ${filename} .txt)
mv ${filename}  ${name}_2022.txt
done

```


## Exercise

Remove `_2022` from all of the `.txt` files. 

## Solution




