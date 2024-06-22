# PerlHowtoProgram
Perl How to Program (Introducing CGI &amp; Python), Paul &amp; Harvey Deitel.


## Installation

### UNIX-like Systems (Linux, Solaris, Mac OS X)
Perl is typically pre-installed on UNIX-like systems, including Linux, Solaris, and Mac OS X.

### Windows
Windows does not come with Perl pre-installed. To install Perl on Windows, you can use 
[Strawberry Perl](https://strawberryperl.com/) &amp; [ActiveState Perl](https://www.activestate.com/products/perl/).

For more info see [Perl Download](https://www.perl.org/get.html).

## Perl CLI

Perl has a variety of command-line options that can make your programs more concise and powerful. Here are some of the most useful basic options:

### Version

- **`-v/--version`**: Compiles your program without running it. This helps catch syntax errors.
  ```sh
  perl --version
  ```
  
  ```text
  Microsoft Windows [Version 10.0.18363.959]
  (c) 2019 Microsoft Corporation. All rights reserved.
  
  C:\PerlHowtoProgram>perl --version
  
  This is perl 5, version 36, subversion 3 (v5.36.3) built for MSWin32-x64-multi-thread
  
  Copyright 1987-2023, Larry Wall
  
  Binary build 36.3r4 provided by ActiveState http://www.ActiveState.co
  Built Tue Mar 26 23:18:34 2024
  
  Perl may be copied only under the terms of either the Artistic License or th
  GNU General Public License, which may be found in the Perl 5 source kit.
  
  Complete documentation for Perl, including FAQ lists, should be found on
  this system using "man perl" or "perldoc perl".  If you have access to the
  Internet, point your browser at https://www.perl.org/, the Perl Home Page.
  ```

### Compilation

- **`-c`**: Compiles your program without running it. This helps catch syntax errors.
  ```sh
  perl -c main.pl
  ```

- **`-w`**: Turns on warnings, which can help identify potential issues in your code.
  ```sh
  perl -w main.pl
  ```

- **`-T`**: Enables taint mode, which helps secure your program by preventing the use of potentially unsafe data.
  ```sh
  perl -T main.pl
  ```

### Execution

- **`-e`**: Allows you to specify Perl code directly on the command line.
  ```sh
  perl -e 'print "Hello World\n"'
  ```

- **`-m/-M`**: Loads a module before executing your code.
  ```sh
  perl -MLWP::Simple -e 'print head "https://www.perl.com/"'
  ```

For more info see [Perl CLI](https://www.perl.com/pub/2004/08/09/commandline.html/).

**NOTE**: Perl ("Practical Extraction and Reporting Language") is a high-level, general-purpose, 
interpreted, dynamic programming language.
