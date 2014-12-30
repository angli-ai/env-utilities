#!/bin/bash

tempdir=./.temp
if [ ! -d "$tempdir" ]; then
	mkdir $tempdir
fi

cd $tempdir

tcldir=$HOME/.local/Tcl
if [ ! -d "$tcldir" ]; then
	if [ ! -d "tcl8.6.3" ]; then
		# download tcl8.6.3
		curl -L http://prdownloads.sourceforge.net/tcl/tcl8.6.3-src.tar.gz > tcl8.6.3.tar.gz
		tar xzf tcl8.6.3.tar.gz 
	fi

	cd tcl8.6.3/macosx
	./configure 
	make -j 4
	sudo make install
	cd ../..
fi

modulesdir=$HOME/.local/environment-modules
if [ ! -d "$modulesdir" ]; then
	if [ ! -d "modules-3.2.10" ]; then
		# download modules
		curl -L "http://downloads.sourceforge.net/project/modules/Modules/modules-3.2.10/modules-3.2.10.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fmodules%2Ffiles%2FModules%2Fmodules-3.2.10%2F&ts=1418923139&use_mirror=iweb" > modules-3.2.10.tar.gz
		tar xzf modules-3.2.10.tar.gz
	fi
	cd modules-3.2.10
	./configure --prefix=$modulesdir
	make -j 4
	make install
	cd ..
fi
