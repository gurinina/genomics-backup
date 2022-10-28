# Introducing the Shell



## What is a shell and why should I care?

A *shell* is a computer program that presents a command line interface
which allows you to control your computer using commands entered
with a keyboard instead of controlling graphical user interfaces
(GUIs) with a mouse/keyboard/touchscreen combination.

There are many reasons to learn about the shell:

* Many bioinformatics tools can only be used through a command line interface. Many more 
have features and parameter options which are not available in the GUI.
BLAST is an example. Many of the advanced functions are only accessible
to users who know how to use a shell.  
* The shell makes your work less boring. In bioinformatics you often need to repeat tasks with a large number of files. With the shell, you can automate those repetitive tasks and leave you free to do more exciting things.  
* The shell makes your work less error-prone. When humans do the same thing a hundred different times
(or even ten times), they're likely to make a mistake. Your computer can do the same thing a thousand times
with no mistakes.  
* The shell makes your work more reproducible. When you carry out your work in the command-line 
(rather than a GUI), your computer keeps a record of every step that you've carried out, which you can use 
to re-do your work when you need to. It also gives you a way to communicate unambiguously what you've done, 
so that others can inspect or apply your process to new data.  
* Many bioinformatic tasks require large amounts of computing power and can't realistically be run on your
own machine. These tasks are best performed using remote computers or cloud computing, which can only be accessed
through a shell.

In this lesson you will learn how to use the command line interface to move around in your file system. 

## How to access the shell

On a Mac or Linux machine, you can access a shell through a program called "Terminal", which is already available
on your computer. The Terminal is a window into which we will type commands. If you're using Windows, you'll need to download a separate program to access the shell.

## Navigating your file system

The part of the operating system that manages files and directories
is called the **file system**.
It organizes our data into files,
which hold information,
and directories (also called "folders"),
which hold files or other directories.

Several commands are frequently used to create, inspect, rename, and delete files and directories.

## Tip
Hot-key combinations are shortcuts for performing common commands.
The hot-key combination for clearing the console is `Ctrl+L`. Feel free to try it and see for yourself.


Let's find out where we are by running a command called `pwd`
(which stands for "print working directory").
At any moment, our **current working directory**
is our current default directory,
i.e.,
the directory that the computer assumes we want to run commands in,
unless we explicitly specify something else.
Here,
the computer's response is `/Users/dcuser`,
which is the top level directory within our cloud system:




```bash

 pwd
 
```

```
## /Users/ggiaever/Documents/RProjects/shell-genomics
```

Let's look at how our file system is organized. We can see what files and subdirectories are in this directory by running `ls`,
which stands for "listing":




```bash

 ls
 
```

```
## 01-introduction.Rmd
## 02-the-filesystem.Rmd
## 03-working-with-files.Rmd
## 04-redirection.Rmd
## 05-writing-scripts.Rmd
## 06-organization.Rmd
## LICENSE.md
## Solutions.Rmd
## _book
## _bookdown.yml
## _output.yml
## dc_workshop_log_2022_11_27.sh
## fig
## fix-paths.sh
## fix-paths.shes
## index.Rmd
## index.md
## render167cc5a004578.rds
## shell-genomics.Rproj
## shell-genomics.rds
```

`ls` prints the names of the files and directories in the current directory in
alphabetical order,
arranged neatly into columns. 
We'll be working within the `~/shell_data` subdirectory, and creating new subdirectories, throughout this workshop.  

The command to change locations in our file system is `cd`, followed by a
directory name to change our working directory.
`cd` stands for "change directory".

Let's say we want to navigate to the `shell_data` directory we saw above.  We can
use the following command to get there:



```bash

cd ~/shell_data

```


Let's look at what is in this directory:



```bash

cd ~/shell_data
ls
```

```
## sra_metadata
## untrimmed_fastq
```


We can make the `ls` output more comprehensible by using the **flag** `-F`,
which tells `ls` to add a trailing `/` to the names of directories:


```bash

cd ~/shell_data
ls -F
 
```

```
## sra_metadata/
## untrimmed_fastq/
```

Anything with a "/" after it is a directory. Things with a "*" after them are programs. If
there are no decorations, it's a file.

`ls` has lots of other options. To find out what they are, we can type:


```bash

 man ls
 
```

```
## LS(1)                        General Commands Manual                       LS(1)
## 
## NNAAMMEE
##      llss – list directory contents
## 
## SSYYNNOOPPSSIISS
##      llss [--@@AABBCCFFGGHHIILLOOPPRRSSTTUUWWaabbccddeeffgghhiikkllmmnnooppqqrrssttuuvvwwxxyy11%%,,] [----ccoolloorr=_w_h_e_n]
##         [--DD _f_o_r_m_a_t] [_f_i_l_e _._._.]
## 
## DDEESSCCRRIIPPTTIIOONN
##      For each operand that names a _f_i_l_e of a type other than directory, llss
##      displays its name as well as any requested, associated information.  For
##      each operand that names a _f_i_l_e of type directory, llss displays the names of
##      files contained within that directory, as well as any requested, associated
##      information.
## 
##      If no operands are given, the contents of the current directory are
##      displayed.  If more than one operand is given, non-directory operands are
##      displayed first; directory and non-directory operands are sorted separately
##      and in lexicographical order.
## 
##      The following options are available:
## 
##      --@@      Display extended attribute keys and sizes in long (--ll) output.
## 
##      --AA      Include directory entries whose names begin with a dot (‘_.’) except
##              for _. and _._..  Automatically set for the super-user unless --II is
##              specified.
## 
##      --BB      Force printing of non-printable characters (as defined by ctype(3)
##              and current locale settings) in file names as \_x_x_x, where _x_x_x is
##              the numeric value of the character in octal.  This option is not
##              defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --CC      Force multi-column output; this is the default when output is to a
##              terminal.
## 
##      --DD _f_o_r_m_a_t
##              When printing in the long (--ll) format, use _f_o_r_m_a_t to format the
##              date and time output.  The argument _f_o_r_m_a_t is a string used by
##              strftime(3).  Depending on the choice of format string, this may
##              result in a different number of columns in the output.  This option
##              overrides the --TT option.  This option is not defined in IEEE Std
##              1003.1-2008 (“POSIX.1”).
## 
##      --FF      Display a slash (‘/’) immediately after each pathname that is a
##              directory, an asterisk (‘*’) after each that is executable, an at
##              sign (‘@’) after each symbolic link, an equals sign (‘=’) after
##              each socket, a percent sign (‘%’) after each whiteout, and a
##              vertical bar (‘|’) after each that is a FIFO.
## 
##      --GG      Enable colorized output.  This option is equivalent to defining
##              CLICOLOR or COLORTERM in the environment and setting ----ccoolloorr=_a_u_t_o.
##              (See below.)  This functionality can be compiled out by removing
##              the definition of COLORLS.  This option is not defined in IEEE Std
##              1003.1-2008 (“POSIX.1”).
## 
##      --HH      Symbolic links on the command line are followed.  This option is
##              assumed if none of the --FF, --dd, or --ll options are specified.
## 
##      --II      Prevent --AA from being automatically set for the super-user.  This
##              option is not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --LL      Follow all symbolic links to final target and list the file or
##              directory the link references rather than the link itself.  This
##              option cancels the --PP option.
## 
##      --OO      Include the file flags in a long (--ll) output.  This option is
##              incompatible with IEEE Std 1003.1-2008 (“POSIX.1”).  See chflags(1)
##              for a list of file flags and their meanings.
## 
##      --PP      If argument is a symbolic link, list the link itself rather than
##              the object the link references.  This option cancels the --HH and --LL
##              options.
## 
##      --RR      Recursively list subdirectories encountered.
## 
##      --SS      Sort by size (largest file first) before sorting the operands in
##              lexicographical order.
## 
##      --TT      When printing in the long (--ll) format, display complete time
##              information for the file, including month, day, hour, minute,
##              second, and year.  The --DD option gives even more control over the
##              output format.  This option is not defined in IEEE Std 1003.1-2008
##              (“POSIX.1”).
## 
##      --UU      Use time when file was created for sorting or printing.  This
##              option is not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --WW      Display whiteouts when scanning directories.  This option is not
##              defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --aa      Include directory entries whose names begin with a dot (‘_.’).
## 
##      --bb      As --BB, but use C escape codes whenever possible.  This option is
##              not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --cc      Use time when file status was last changed for sorting or printing.
## 
##      ----ccoolloorr=_w_h_e_n
##              Output colored escape sequences based on _w_h_e_n, which may be set to
##              either aallwwaayyss, aauuttoo, or nneevveerr.
## 
##              aallwwaayyss will make llss always output color.  If TERM is unset or set
##              to an invalid terminal, then llss will fall back to explicit ANSI
##              escape sequences without the help of termcap(5).  aallwwaayyss is the
##              default if ----ccoolloorr is specified without an argument.
## 
##              aauuttoo will make llss output escape sequences based on termcap(5), but
##              only if stdout is a tty and either the --GG flag is specified or the
##              COLORTERM environment variable is set and not empty.
## 
##              nneevveerr will disable color regardless of environment variables.
##              nneevveerr is the default when neither ----ccoolloorr nor --GG is specified.
## 
##              For compatibility with GNU coreutils, llss supports yyeess or ffoorrccee as
##              equivalent to aallwwaayyss, nnoo or nnoonnee as equivalent to nneevveerr, and ttttyy or
##              iiff--ttttyy as equivalent to aauuttoo.
## 
##      --dd      Directories are listed as plain files (not searched recursively).
## 
##      --ee      Print the Access Control List (ACL) associated with the file, if
##              present, in long (--ll) output.
## 
##      --ff      Output is not sorted.  This option turns on --aa.  It also negates
##              the effect of the --rr, --SS and --tt options.  As allowed by IEEE Std
##              1003.1-2008 (“POSIX.1”), this option has no effect on the --dd, --ll,
##              --RR and --ss options.
## 
##      --gg      This option has no effect.  It is only available for compatibility
##              with 4.3BSD, where it was used to display the group name in the
##              long (--ll) format output.  This option is incompatible with IEEE Std
##              1003.1-2008 (“POSIX.1”).
## 
##      --hh      When used with the --ll option, use unit suffixes: Byte, Kilobyte,
##              Megabyte, Gigabyte, Terabyte and Petabyte in order to reduce the
##              number of digits to four or fewer using base 2 for sizes.  This
##              option is not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --ii      For each file, print the file's file serial number (inode number).
## 
##      --kk      This has the same effect as setting environment variable BLOCKSIZE
##              to 1024, except that it also nullifies any --hh options to its left.
## 
##      --ll      (The lowercase letter “ell”.) List files in the long format, as
##              described in the _T_h_e _L_o_n_g _F_o_r_m_a_t subsection below.
## 
##      --mm      Stream output format; list files across the page, separated by
##              commas.
## 
##      --nn      Display user and group IDs numerically rather than converting to a
##              user or group name in a long (--ll) output.  This option turns on the
##              --ll option.
## 
##      --oo      List in long format, but omit the group id.
## 
##      --pp      Write a slash (‘/’) after each filename if that file is a
##              directory.
## 
##      --qq      Force printing of non-graphic characters in file names as the
##              character ‘?’; this is the default when output is to a terminal.
## 
##      --rr      Reverse the order of the sort.
## 
##      --ss      Display the number of blocks used in the file system by each file.
##              Block sizes and directory totals are handled as described in _T_h_e
##              _L_o_n_g _F_o_r_m_a_t subsection below, except (if the long format is not
##              also requested) the directory totals are not output when the output
##              is in a single column, even if multi-column output is requested.
##              (--ll) format, display complete time information for the file,
##              including month, day, hour, minute, second, and year.  The --DD
##              option gives even more control over the output format.  This option
##              is not defined in IEEE Std 1003.1-2008 (“POSIX.1”).
## 
##      --tt      Sort by descending time modified (most recently modified first).
##              If two files have the same modification timestamp, sort their names
##              in ascending lexicographical order.  The --rr option reverses both of
##              these sort orders.
## 
##              Note that these sort orders are contradictory: the time sequence is
##              in descending order, the lexicographical sort is in ascending
##              order.  This behavior is mandated by IEEE Std 1003.2 (“POSIX.2”).
##              This feature can cause problems listing files stored with
##              sequential names on FAT file systems, such as from digital cameras,
##              where it is possible to have more than one image with the same
##              timestamp.  In such a case, the photos cannot be listed in the
##              sequence in which they were taken.  To ensure the same sort order
##              for time and for lexicographical sorting, set the environment
##              variable LS_SAMESORT or use the --yy option.  This causes llss to
##              reverse the lexicographical sort order when sorting files with the
##              same modification timestamp.
## 
##      --uu      Use time of last access, instead of time of last modification of
##              the file for sorting (--tt) or long printing (--ll).
## 
##      --vv      Force unedited printing of non-graphic characters; this is the
##              default when output is not to a terminal.
## 
##      --ww      Force raw printing of non-printable characters.  This is the
##              default when output is not to a terminal.  This option is not
##              defined in IEEE Std 1003.1-2001 (“POSIX.1”).
## 
##      --xx      The same as --CC, except that the multi-column output is produced
##              with entries sorted across, rather than down, the columns.
## 
##      --yy      When the --tt option is set, sort the alphabetical output in the same
##              order as the time output.  This has the same effect as setting
##              LS_SAMESORT.  See the description of the --tt option for more
##              details.  This option is not defined in IEEE Std 1003.1-2001
##              (“POSIX.1”).
## 
##      --%%      Distinguish dataless files and directories with a '%' character in
##              long
## 
##      --11      (The numeric digit “one”.) Force output to be one entry per line.
##              This is the default when output is not to a terminal.  (--ll) output,
##              and don't materialize dataless directories when listing them.
## 
##      --,      (Comma) When the --ll option is set, print file sizes grouped and
##              separated by thousands using the non-monetary separator returned by
##              localeconv(3), typically a comma or period.  If no locale is set,
##              or the locale does not have a non-monetary separator, this option
##              has no effect.  This option is not defined in IEEE Std 1003.1-2001
##              (“POSIX.1”).
## 
##      The --11, --CC, --xx, and --ll options all override each other; the last one
##      specified determines the format used.
## 
##      The --cc, --uu, and --UU options all override each other; the last one specified
##      determines the file time used.
## 
##      The --SS and --tt options override each other; the last one specified
##      determines the sort order used.
## 
##      The --BB, --bb, --ww, and --qq options all override each other; the last one
##      specified determines the format used for non-printable characters.
## 
##      The --HH, --LL and --PP options all override each other (either partially or
##      fully); they are applied in the order specified.
## 
##      By default, llss lists one entry per line to standard output; the exceptions
##      are to terminals or when the --CC or --xx options are specified.
## 
##      File information is displayed with one or more ⟨blank⟩s separating the
##      information associated with the --ii, --ss, and --ll options.
## 
##    TThhee LLoonngg FFoorrmmaatt
##      If the --ll option is given, the following information is displayed for each
##      file: file mode, number of links, owner name, group name, number of bytes
##      in the file, abbreviated month, day-of-month file was last modified, hour
##      file last modified, minute file last modified, and the pathname.  If the
##      file or directory has extended attributes, the permissions field printed by
##      the --ll option is followed by a '@' character.  Otherwise, if the file or
##      directory has extended security information (such as an access control
##      list), the permissions field printed by the --ll option is followed by a '+'
##      character.  If the --%% option is given, a '%' character follows the
##      permissions field for dataless files and directories, possibly replacing
##      the '@' or '+' character.
## 
##      If the modification time of the file is more than 6 months in the past or
##      future, and the --DD or --TT are not specified, then the year of the last
##      modification is displayed in place of the hour and minute fields.
## 
##      If the owner or group names are not a known user or group name, or the --nn
##      option is given, the numeric ID's are displayed.
## 
##      If the file is a character special or block special file, the device number
##      for the file is displayed in the size field.  If the file is a symbolic
##      link the pathname of the linked-to file is preceded by “->”.
## 
##      The listing of a directory's contents is preceded by a labeled total number
##      of blocks used in the file system by the files which are listed as the
##      directory's contents (which may or may not include _. and _._. and other files
##      which start with a dot, depending on other options).
## 
##      The default block size is 512 bytes.  The block size may be set with option
##      --kk or environment variable BLOCKSIZE.  Numbers of blocks in the output will
##      have been rounded up so the numbers of bytes is at least as many as used by
##      the corresponding file system blocks (which might have a different size).
## 
##      The file mode printed under the --ll option consists of the entry type and
##      the permissions.  The entry type character describes the type of file, as
##      follows:
## 
##            --     Regular file.
##            bb     Block special file.
##            cc     Character special file.
##            dd     Directory.
##            ll     Symbolic link.
##            pp     FIFO.
##            ss     Socket.
##            ww     Whiteout.
## 
##      The next three fields are three characters each: owner permissions, group
##      permissions, and other permissions.  Each field has three character
##      positions:
## 
##            1.   If rr, the file is readable; if --, it is not readable.
## 
##            2.   If ww, the file is writable; if --, it is not writable.
## 
##            3.   The first of the following that applies:
## 
##                       SS     If in the owner permissions, the file is not
##                             executable and set-user-ID mode is set.  If in the
##                             group permissions, the file is not executable and
##                             set-group-ID mode is set.
## 
##                       ss     If in the owner permissions, the file is executable
##                             and set-user-ID mode is set.  If in the group
##                             permissions, the file is executable and setgroup-ID
##                             mode is set.
## 
##                       xx     The file is executable or the directory is
##                             searchable.
## 
##                       --     The file is neither readable, writable, executable,
##                             nor set-user-ID nor set-group-ID mode, nor sticky.
##                             (See below.)
## 
##                 These next two apply only to the third character in the last
##                 group (other permissions).
## 
##                       TT     The sticky bit is set (mode 1000), but not execute
##                             or search permission.  (See chmod(1) or sticky(7).)
## 
##                       tt     The sticky bit is set (mode 1000), and is searchable
##                             or executable.  (See chmod(1) or sticky(7).)
## 
##      The next field contains a plus (‘+’) character if the file has an ACL, or a
##      space (‘ ’) if it does not.  The llss utility does not show the actual ACL;
##      use getfacl(1) to do this.
## 
## EENNVVIIRROONNMMEENNTT
##      The following environment variables affect the execution of llss:
## 
##      BLOCKSIZE           If this is set, its value, rounded up to 512 or down to
##                          a multiple of 512, will be used as the block size in
##                          bytes by the --ll and --ss options.  See _T_h_e _L_o_n_g _F_o_r_m_a_t
##                          subsection for more information.
## 
##      CLICOLOR            Use ANSI color sequences to distinguish file types.
##                          See LSCOLORS below.  In addition to the file types
##                          mentioned in the --FF option some extra attributes
##                          (setuid bit set, etc.) are also displayed.  The
##                          colorization is dependent on a terminal type with the
##                          proper termcap(5) capabilities.  The default “cons25”
##                          console has the proper capabilities, but to display the
##                          colors in an xterm(1), for example, the TERM variable
##                          must be set to “xterm-color”.  Other terminal types may
##                          require similar adjustments.  Colorization is silently
##                          disabled if the output is not directed to a terminal
##                          unless the CLICOLOR_FORCE variable is defined or
##                          ----ccoolloorr is set to “always”.
## 
##      CLICOLOR_FORCE      Color sequences are normally disabled if the output is
##                          not directed to a terminal.  This can be overridden by
##                          setting this variable.  The TERM variable still needs
##                          to reference a color capable terminal however otherwise
##                          it is not possible to determine which color sequences
##                          to use.
## 
##      COLORTERM           See description for CLICOLOR above.
## 
##      COLUMNS             If this variable contains a string representing a
##                          decimal integer, it is used as the column position
##                          width for displaying multiple-text-column output.  The
##                          llss utility calculates how many pathname text columns to
##                          display based on the width provided.  (See --CC and --xx.)
## 
##      LANG                The locale to use when determining the order of day and
##                          month in the long --ll format output.  See environ(7) for
##                          more information.
## 
##      LSCOLORS            The value of this variable describes what color to use
##                          for which attribute when colors are enabled with
##                          CLICOLOR or COLORTERM.  This string is a concatenation
##                          of pairs of the format _f_b, where _f is the foreground
##                          color and _b is the background color.
## 
##                          The color designators are as follows:
## 
##                                aa     black
##                                bb     red
##                                cc     green
##                                dd     brown
##                                ee     blue
##                                ff     magenta
##                                gg     cyan
##                                hh     light grey
##                                AA     bold black, usually shows up as dark grey
##                                BB     bold red
##                                CC     bold green
##                                DD     bold brown, usually shows up as yellow
##                                EE     bold blue
##                                FF     bold magenta
##                                GG     bold cyan
##                                HH     bold light grey; looks like bright white
##                                xx     default foreground or background
## 
##                          Note that the above are standard ANSI colors.  The
##                          actual display may differ depending on the color
##                          capabilities of the terminal in use.
## 
##                          The order of the attributes are as follows:
## 
##                                1.   directory
##                                2.   symbolic link
##                                3.   socket
##                                4.   pipe
##                                5.   executable
##                                6.   block special
##                                7.   character special
##                                8.   executable with setuid bit set
##                                9.   executable with setgid bit set
##                                10.  directory writable to others, with sticky
##                                     bit
##                                11.  directory writable to others, without sticky
##                                     bit
## 
##                          The default is "exfxcxdxbxegedabagacad", i.e., blue
##                          foreground and default background for regular
##                          directories, black foreground and red background for
##                          setuid executables, etc.
## 
##      LS_COLWIDTHS        If this variable is set, it is considered to be a
##                          colon-delimited list of minimum column widths.
##                          Unreasonable and insufficient widths are ignored (thus
##                          zero signifies a dynamically sized column).  Not all
##                          columns have changeable widths.  The fields are, in
##                          order: inode, block count, number of links, user name,
##                          group name, flags, file size, file name.
## 
##      LS_SAMESORT         If this variable is set, the --tt option sorts the names
##                          of files with the same modification timestamp in the
##                          same sense as the time sort.  See the description of
##                          the --tt option for more details.
## 
##      TERM                The CLICOLOR and COLORTERM functionality depends on a
##                          terminal type with color capabilities.
## 
##      TZ                  The timezone to use when displaying dates.  See
##                          environ(7) for more information.
## 
## EEXXIITT SSTTAATTUUSS
##      The llss utility exits 0 on success, and >0 if an error occurs.
## 
## EEXXAAMMPPLLEESS
##      List the contents of the current working directory in long format:
## 
##            $ ls -l
## 
##      In addition to listing the contents of the current working directory in
##      long format, show inode numbers, file flags (see chflags(1)), and suffix
##      each filename with a symbol representing its file type:
## 
##            $ ls -lioF
## 
##      List the files in _/_v_a_r_/_l_o_g, sorting the output such that the most recently
##      modified entries are printed first:
## 
##            $ ls -lt /var/log
## 
## CCOOMMPPAATTIIBBIILLIITTYY
##      The group field is now automatically included in the long listing for files
##      in order to be compatible with the IEEE Std 1003.2 (“POSIX.2”)
##      specification.
## 
## LLEEGGAACCYY DDEESSCCRRIIPPTTIIOONN
##      In legacy mode, the --ff option does not turn on the --aa option and the --gg,
##      --nn, and --oo options do not turn on the --ll option.
## 
##      Also, the --oo option causes the file flags to be included in a long (-l)
##      output; there is no --OO option.
## 
##      When --HH is specified (and not overridden by --LL or --PP) and a file argument
##      is a symlink that resolves to a non-directory file, the output will reflect
##      the nature of the link, rather than that of the file.  In legacy operation,
##      the output will describe the file.
## 
##      For more information about legacy mode, see compat(5).
## 
## SSEEEE AALLSSOO
##      chflags(1), chmod(1), getfacl(1), sort(1), xterm(1), localeconv(3),
##      strftime(3), strmode(3), compat(5), termcap(5), sticky(7), symlink(7)
## 
## SSTTAANNDDAARRDDSS
##      With the exception of options --gg, --nn and --oo, the llss utility conforms to
##      IEEE Std 1003.1-2001 (“POSIX.1”) and IEEE Std 1003.1-2008 (“POSIX.1”).  The
##      options --BB, --DD, --GG, --II, --TT, --UU, --WW, --ZZ, --bb, --hh, --ww, --yy and --, are non-
##      standard extensions.
## 
##      The ACL support is compatible with IEEE Std 1003.2c (“POSIX.2c”) Draft 17
##      (withdrawn).
## 
## HHIISSTTOORRYY
##      An llss command appeared in Version 1 AT&T UNIX.
## 
## BBUUGGSS
##      To maintain backward compatibility, the relationships between the many
##      options are quite complex.
## 
##      The exception mentioned in the --ss option description might be a feature
##      that was based on the fact that single-column output usually goes to
##      something other than a terminal.  It is debatable whether this is a design
##      bug.
## 
##      IEEE Std 1003.2 (“POSIX.2”) mandates opposite sort orders for files with
##      the same timestamp when sorting with the --tt option.
## 
## macOS 12.6                       August 31, 2020                      macOS 12.6
```

`man` (short for manual) displays detailed documentation (also referred as man page or man file)
for `bash` commands. It is a powerful resource to explore `bash` commands, understand
their usage and flags. Some manual files are very long. You can scroll through the
file using your keyboard's down arrow or use the <kbdSpace</kbdkey to go forward one page
and the <kbdb</kbdkey to go backwards one page. When you are done reading, hit <kbdq</kbd
to quit.

## Challenge
Use the `-l` option for the `ls` command to display more information for each item 
in the directory. What is one piece of additional information this long format
gives you that you don't see with the bare `ls` command?

## Solution


```bash

cd ~/shell_data
ls -l
 
```

```
## total 0
## drwxr-x---@  3 ggiaever  staff   96 Jul 30  2015 sra_metadata
## drwxr-xr-x@ 10 ggiaever  staff  320 Oct 23 23:22 untrimmed_fastq
```

The additional information given includes the name of the owner of the file,
when the file was last modified, and whether the current user has permission
to read and write to the file.
No one can possibly learn all of these arguments, that's what the manual page
is for. You can (and should) refer to the manual page or other help files
as needed.

Let's go into the `untrimmed_fastq` directory and see what is in there.

```bash

cd ~/shell_data/untrimmed_fastq
ls -F
 
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

This directory contains two files with `.fastq` extensions. FASTQ is a format
for storing information about sequencing reads and their quality.
We will be learning more about FASTQ files in a later lesson.

### Shortcut: Tab Completion

Typing out file or directory names can waste a
lot of time and it's easy to make typing mistakes. Instead we can use tab complete 
as a shortcut. When you start typing out the name of a directory or file, then
hit the <kbdTab</kbdkey, the shell will try to fill in the rest of the
directory or file name.

Return to your home directory:


```bash
 
cd ~

```

then enter:


```bash

cd sh<tab
 
```

The shell will fill in the rest of the directory name for `shell_data`.

Now change directories to `untrimmed_fastq` in `shell_data`


```bash

cd ~/shell_data
cd untrimmed_fastq
 
```

Using tab complete can be very helpful. However, it will only autocomplete
a file or directory name if you've typed enough characters to provide
a unique identifier for the file or directory you are trying to access.

For example, if we now try to list the files which names start with `SR`
by using tab complete:  


```bash

ls SR<tab
 
```

The shell auto-completes your command to `SRR09`, because all file names in 
the directory begin with this prefix. When you hit
<kbdTab</kbd again, the shell will list the possible choices.


```bash

ls SRR258<tab<tab
 
```

Tab completion can also fill in the names of programs, which can be useful if you
remember the beginning of a program name.


```bash

pw<tab<tab

```

Displays the name of every program that starts with `pw`. 

## Summary

We now know how to move around our file system using the command line.
This gives us an advantage over interacting with the file system through
a GUI as it allows us to work on a remote server, carry out the same set of operations 
on a large number of files quickly, and opens up many opportunities for using 
bioinformatic software that is only available in command line versions. 

In the next few episodes, we'll be expanding on these skills and seeing how 
using the command line shell enables us to make our workflow more efficient and reproducible.
