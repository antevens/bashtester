# bashtester
A simple docker-compose setup to test bash code on all currently supported
versions.

Typically this would be used as a git submodule and will map it's parent directory as /code

### Usage

```bash
./run.sh '{command_to_run}'
```

### Examples

```bash
./run.sh 'bash --version' 2> /dev/null
Importing /home/ubuntu/shtdlib/shtdlib.sh
########## 3.0.22 ##########
GNU bash, version 3.00.22(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2004 Free Software Foundation, Inc.
############################
########## 3.1.23 ##########
GNU bash, version 3.1.23(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2005 Free Software Foundation, Inc.
############################
########## 3.2.57 ##########
GNU bash, version 3.2.57(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2007 Free Software Foundation, Inc.
############################
########## 4.0.44 ##########
GNU bash, version 4.0.44(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
########## 4.1.17 ##########
GNU bash, version 4.1.17(2)-release (x86_64-pc-linux-musl)
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
########## 4.2.53 ##########
GNU bash, version 4.2.53(2)-release (x86_64-pc-linux-musl)
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
########## 4.3.48 ##########
GNU bash, version 4.3.48(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
########## 4.4.23 ##########
GNU bash, version 4.4.23(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2016 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
########## 5.0-beta ##########
GNU bash, version 5.0.0(1)-beta (x86_64-pc-linux-musl)
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
```

Example specifying versions: 
```bash
bash_images="3.1.23 4.4.23" ./run.sh 'bash --version' 2> /dev/null
Importing /home/ubuntu/shtdlib/shtdlib.sh
########## 3.1.23 ##########
GNU bash, version 3.1.23(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2005 Free Software Foundation, Inc.
############################
########## 4.4.23 ##########
GNU bash, version 4.4.23(1)-release (x86_64-pc-linux-musl)
Copyright (C) 2016 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
############################
```
