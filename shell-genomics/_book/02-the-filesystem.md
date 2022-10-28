# Navigating Files and Directories



## Moving around the file system

We've learned how to use `pwd` to find our current location within our file system. 
We've also learned how to use `cd` to change locations and `ls` to list the contents
of a directory. Now we're going to learn some additional commands for moving around 
within our file system.

Use the commands we've learned so far to navigate to the `shell_data/untrimmed_fastq` directory, if
you're not already there. 




```bash

cd
cd ~/shell_data
cd untrimmed_fastq

```




What if we want to move back up and out of this directory and to our top level 
directory? Can we type `cd data`? Try it and see what happens.





```bash

cd
cd ~/shell_data
cd untrimmed_fastq
cd shell_data

```

Your computer looked for a directory or file called `shell_data` within the 
directory you were already in. It didn't know you wanted to look at a directory level
above the one you were located in. 

We have a special command to tell the computer to move us back or up one directory level. 



```bash

cd ~/shell_data
cd untrimmed_fastq
cd ..

```


Now we can use `pwd` to make sure that we are in the directory we intended to navigate
to, and `ls` to check that the contents of the directory are correct.





```bash

cd
cd ~/shell_data
cd untrimmed_fastq
pwd
 
```

```
## /Users/ggiaever/shell_data/untrimmed_fastq
```




```bash

cd
cd ~/shell_data
cd untrimmed_fastq
ls

```

```
## SRR097977.fastq
## SRR098026.fastq
## bad-reads-script.sh
## bad_reads_2022.txt
## scripted_bad_reads_2022.txt
## seq_info_2022.txt
## species_EnsemblBacteria_2022.txt
```


From this output, we can see that `..` did indeed take us back one level in our file system. 

You can chain these together like so:


```bash

cd
cd ~/shell_data
cd untrimmed_fastq
ls ../../

```

```
## @sockeye.arc.ubc.ca
## Applications
## Brewfile
## Desktop
## Documents
## Downloads
## ERP004763_sample_mapping.txt
## ERR458500.fastq
## ERR458501_fastqc
## ERR458501_fastqc.html
## ERR458501_fastqc.zip
## Google Drive
## Library
## Makevars
## Miniconda3-latest-MacOSX-x86_64.sh
## Movies
## Music
## Parallels
## Pictures
## Public
## SRR2584863_1.fastq
## SRR2584863_1.fastq.gz
## SRR2584863_2.fastq.gz
## SRR2584866_1.fastq
## SRR2584866_1.fastq.gz
## SRR8668769.fastq
## STAR-2.7.10a
## STAR-2.7.10a.tar.gz
## Takevars.textClipping
## Zotero
## arm64.sh
## backup-rstudio-prefs
## backuup-config-rstudio
## build.sh
## condash
## cpc2_result.txt
## dc_workshop
## echo
## err_md5sum.txt
## example1.cpp
## fasterq.tmp.Guris-MacBook-Pro-2.local.67466
## femaleMiceWeights.csv
## find.txt
## gfortran-f51f1da0-darwin20.0-arm64.tar.gz
## gsea_home
## hello.cpp
## helloworld
## homebrew
## igv
## index.bam
## iupred2a_result.txt
## miniconda3
## miniconda3-intel
## node_modules
## omp-test.c
## openmp-12.0.1-darwin20-Release.tar.gz
## openmp-13.0.0-darwin21-Release.tar.gz
## opt
## package-lock.json
## package.json
## path
## pfam_result.txt
## quality
## quant
## shell_data
## signalP_result.txt
## sorted_I_142254-142619.bam
## sorted_chrI_1-142620-143160.bam
## sorted_chrI_I
## sorted_chrI_I:142174-142253.bam
## species_EnsemblBacteria.txt
## sratoolkit.3.0.0-mac64
## sratoolkit.current-mac64.tar.gz
## sratoolkit.tar.gz
## test-openblas.c
## tmp
## tmp.txt
## tnp
## xz-5.2.5-darwin.20-arm64.tar.gz
## zshrc_backup.txt
```

prints the contents of `/Users`.

## Finding hidden directories

## Exercise

First navigate to the `shell_data` directory. There is a hidden directory within this directory. Explore the options for `ls` to 
find out how to see hidden directories. List the contents of the directory and 
identify the name of the text file in that directory.

Hint: hidden files and folders in Unix start with `.`, for example `.my_hidden_directory`

## Solution






In most commands the flags can be combined together in no particular order to obtain the desired results/output.


```bash

cd
cd ~/shell_data
cd untrimmed_fastq
ls -Fa
ls -laF

```

```
## ./
## ../
## .DS_Store
## SRR097977.fastq
## SRR098026.fastq
## bad-reads-script.sh
## bad_reads_2022.txt
## scripted_bad_reads_2022.txt
## seq_info_2022.txt
## species_EnsemblBacteria_2022.txt
## total 18144
## drwxr-xr-x@ 10 ggiaever  staff      320 Oct 23 23:22 ./
## drwxrwxr-x@  6 ggiaever  staff      192 Oct 20 19:06 ../
## -rw-r--r--@  1 ggiaever  staff     6148 Oct 23 23:22 .DS_Store
## -rw-r--r--@  1 ggiaever  staff    47552 Nov 15  2017 SRR097977.fastq
## -rw-r--r--@  1 ggiaever  staff    43332 Nov 15  2017 SRR098026.fastq
## -rw-r--r--   1 ggiaever  staff       76 Oct 23 22:50 bad-reads-script.sh
## -rw-r--r--   1 ggiaever  staff    23214 Oct 23 23:22 bad_reads_2022.txt
## -rw-r--r--   1 ggiaever  staff    23214 Oct 23 22:51 scripted_bad_reads_2022.txt
## -rw-r--r--   1 ggiaever  staff       85 Oct 23 23:22 seq_info_2022.txt
## -rw-r--r--   1 ggiaever  staff  8352381 Oct 23 23:01 species_EnsemblBacteria_2022.txt
```


## Examining the contents of other directories

By default, the `ls` commands lists the contents of the working
directory (i.e. the directory you are in). You can always find the
directory you are in using the `pwd` command. However, you can also
give `ls` the names of other directories to view. Navigate to your
home directory if you are not already there.



```bash

cd

```

Then enter the command:



```bash

cd
ls 

```

```
## @sockeye.arc.ubc.ca
## Applications
## Brewfile
## Desktop
## Documents
## Downloads
## ERP004763_sample_mapping.txt
## ERR458500.fastq
## ERR458501_fastqc
## ERR458501_fastqc.html
## ERR458501_fastqc.zip
## Google Drive
## Library
## Makevars
## Miniconda3-latest-MacOSX-x86_64.sh
## Movies
## Music
## Parallels
## Pictures
## Public
## SRR2584863_1.fastq
## SRR2584863_1.fastq.gz
## SRR2584863_2.fastq.gz
## SRR2584866_1.fastq
## SRR2584866_1.fastq.gz
## SRR8668769.fastq
## STAR-2.7.10a
## STAR-2.7.10a.tar.gz
## Takevars.textClipping
## Zotero
## arm64.sh
## backup-rstudio-prefs
## backuup-config-rstudio
## build.sh
## condash
## cpc2_result.txt
## dc_workshop
## echo
## err_md5sum.txt
## example1.cpp
## fasterq.tmp.Guris-MacBook-Pro-2.local.67466
## femaleMiceWeights.csv
## find.txt
## gfortran-f51f1da0-darwin20.0-arm64.tar.gz
## gsea_home
## hello.cpp
## helloworld
## homebrew
## igv
## index.bam
## iupred2a_result.txt
## miniconda3
## miniconda3-intel
## node_modules
## omp-test.c
## openmp-12.0.1-darwin20-Release.tar.gz
## openmp-13.0.0-darwin21-Release.tar.gz
## opt
## package-lock.json
## package.json
## path
## pfam_result.txt
## quality
## quant
## shell_data
## signalP_result.txt
## sorted_I_142254-142619.bam
## sorted_chrI_1-142620-143160.bam
## sorted_chrI_I
## sorted_chrI_I:142174-142253.bam
## species_EnsemblBacteria.txt
## sratoolkit.3.0.0-mac64
## sratoolkit.current-mac64.tar.gz
## sratoolkit.tar.gz
## test-openblas.c
## tmp
## tmp.txt
## tnp
## xz-5.2.5-darwin.20-arm64.tar.gz
## zshrc_backup.txt
```



The `cd` command works in a similar way.

Try entering:



```bash

cd ~/shell_data
cd untrimmed_fastq

```


This will take you to the `untrimmed_fastq` directory 

## Navigating practice

## Exercise

Navigate to your home directory. From there, list the contents of the `untrimmed_fastq` 
directory. 

## Solution




## Full vs. Relative Paths

The `cd` command takes an argument which is a directory
name. Directories can be specified using either a *relative* path or a
full *absolute* path. The directories on the computer are arranged into a
hierarchy. The full path tells you where a directory is in that
hierarchy. Navigate to the home directory, then enter the `pwd`
command.



```bash

cd  
pwd  

```

```
## /Users/ggiaever
```


You will see: 


/Users/dcuser

This is the full name of your home directory. This tells you that you
are in a directory called `dcuser`, which sits inside a directory called
`home` which sits inside the very top directory in the hierarchy. The
very top of the hierarchy is a directory called `/` which is usually
referred to as the *root directory*. So, to summarize: `dcuser` is a
directory in `home` which is a directory in `/`. More on `root` and
`home` in the next section.

Now enter the following command:


```bash

cd /Users/dcuser/shell_data/.hidden

```

This jumps forward multiple levels to the `.hidden` directory. 
Now go back to the home directory. 


```bash

cd ~

```

You can also navigate to the `.hidden` directory using:



```bash

cd ~/shell_data/.hidden

```

These two commands have the same effect, they both take us to the `.hidden` directory.
The first uses the absolute path, giving the full address from the home directory. The
second uses a relative path, giving only the address from the working directory. A full
path always starts with a `/`. A relative path does not.

A relative path is like getting directions from someone on the street. They tell you to
"go right at the stop sign, and then turn left on Main Street". That works great if
you're standing there together, but not so well if you're trying to tell someone how to
get there from another country. A full path is like GPS coordinates. It tells you exactly
where something is no matter where you are right now.

You can usually use either a full path or a relative path depending on what is most convenient.
If we are in the home directory, it is more convenient to enter the full path.
If we are in the working directory, it is more convenient to enter the relative path
since it involves less typing.

Over time, it will become easier for you to keep a mental note of the
structure of the directories that you are using and how to quickly
navigate amongst them.

## Relative path resolution

## Exercise

Using the filesystem diagram below, if `pwd` displays `/Users/thing`,
what will `ls ../backup` display?

1.  `../backup: No such file or directory`
2.  `2012-12-01 2013-01-08 2013-01-27`
3.  `2012-12-01/ 2013-01-08/ 2013-01-27/`
4.  `original pnas_final pnas_sub`

![File System for Challenge Questions](fig/filesystem-challenge.svg)

## Solution



### Navigational Shortcuts

The root directory is the highest level directory in your file
system and contains files that are important for your computer
to perform its daily work. While you will be using the root (`/`)
at the beginning of your absolute paths, it is important that you
avoid working with data in these higher-level directories, as
your commands can permanently alter files that the operating
system needs to function. In many cases, trying to run commands
in `root` directories will require special permissions which are
not discussed here, so it’s best to avoid them and work within your
home directory. Dealing with the `home` directory is very common.
The tilde character, `~`, is a shortcut for your home directory.
In our case, the `root` directory is __two__ levels above our
`home` directory, so `cd` or `cd ~` will take you to
`/Users/dcuser` and `cd /` will take you to `/`. Navigate to the
home directory:



```bash

cd ~

```

Then enter the command:



```bash

cd ~
ls 

```

```
## @sockeye.arc.ubc.ca
## Applications
## Brewfile
## Desktop
## Documents
## Downloads
## ERP004763_sample_mapping.txt
## ERR458500.fastq
## ERR458501_fastqc
## ERR458501_fastqc.html
## ERR458501_fastqc.zip
## Google Drive
## Library
## Makevars
## Miniconda3-latest-MacOSX-x86_64.sh
## Movies
## Music
## Parallels
## Pictures
## Public
## SRR2584863_1.fastq
## SRR2584863_1.fastq.gz
## SRR2584863_2.fastq.gz
## SRR2584866_1.fastq
## SRR2584866_1.fastq.gz
## SRR8668769.fastq
## STAR-2.7.10a
## STAR-2.7.10a.tar.gz
## Takevars.textClipping
## Zotero
## arm64.sh
## backup-rstudio-prefs
## backuup-config-rstudio
## build.sh
## condash
## cpc2_result.txt
## dc_workshop
## echo
## err_md5sum.txt
## example1.cpp
## fasterq.tmp.Guris-MacBook-Pro-2.local.67466
## femaleMiceWeights.csv
## find.txt
## gfortran-f51f1da0-darwin20.0-arm64.tar.gz
## gsea_home
## hello.cpp
## helloworld
## homebrew
## igv
## index.bam
## iupred2a_result.txt
## miniconda3
## miniconda3-intel
## node_modules
## omp-test.c
## openmp-12.0.1-darwin20-Release.tar.gz
## openmp-13.0.0-darwin21-Release.tar.gz
## opt
## package-lock.json
## package.json
## path
## pfam_result.txt
## quality
## quant
## shell_data
## signalP_result.txt
## sorted_I_142254-142619.bam
## sorted_chrI_1-142620-143160.bam
## sorted_chrI_I
## sorted_chrI_I:142174-142253.bam
## species_EnsemblBacteria.txt
## sratoolkit.3.0.0-mac64
## sratoolkit.current-mac64.tar.gz
## sratoolkit.tar.gz
## test-openblas.c
## tmp
## tmp.txt
## tnp
## xz-5.2.5-darwin.20-arm64.tar.gz
## zshrc_backup.txt
```

This prints the contents of your home directory, without you needing to 
type the full path. 

The commands `cd`, and `cd ~` are very useful for quickly navigating back to your home directory. We will be using the `~` character in later lessons to specify our home directory.
