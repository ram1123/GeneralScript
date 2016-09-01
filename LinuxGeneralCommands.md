# Some Linux Commands
[TOC]

## Convert Markdown to LaTex
1. Kramdown package:

		kramdown -o latex --template document <InputMarkDownFile.md>  > <OutPutFileName.tex>
Reference: http://kramdown.gettalong.org/converter/latex.html

2. Pandoc package:
Reference: http://pandoc.org/index.html

		pandoc <InputMarkdownFile.md> -f markdown -t latex -s -o <outputfileName.tex>	
Example uses: http://pandoc.org/demos.html
$ pandoc --help

		pandoc [OPTIONS] [FILES]
		Input formats:   
						native, markdown, markdown+lhs, rst, rst+lhs, 
		                html, latex, latex+lhs
		Output formats:  
		  				native, html, html+lhs, s5, slidy, docbook, 
		                 opendocument, odt, epub, latex, latex+lhs, 
		                 context, texinfo, man, markdown, markdown+lhs, 
		                 plain, rst, rst+lhs, mediawiki, rtf


## Tar/Untar a file

1. How to tar a file
	
		tar -zcvf archive-name.tar.gz directory-name
where, 

	* -z : Compress archive using gzip program
	* -c : Create archive
	* -v : verbose, i.e. to display the progress
	* -f  : Archive file name

* To restore a tar file:
	
		tar -zxvf archive-name.tar.gz
where,
	
	* -x : To extract files

* To extract a tar file in a directory:

		tar -zxvf archive-name.tar.gz -C /tmp
This will extract the given tar file inside directory /tmp

## Find command
* Command: **Find**

		find -name "*.dat"
where,

	* "-name" makes the search case sensitive.
	* "-iname" to make search case insensitive.
	* "*" is a wild card and searches for all file having extension ".dat".

## Grep command
* Command: **grep**

		grep wordToSearch  /path/to/search
this command search for word "wordToSearch" in path (= /path/to/search).
Options:

	* -i : to ignore the case.
	* -r : to search recursively
	* -w for word
	* -c: to count total number of times that pattern matched
	* -color: to get colored output

## command man
* Command: man

	* man man


