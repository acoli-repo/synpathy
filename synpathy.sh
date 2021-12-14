#!/bin/bash

MYHOME=`dirname $0`
CP=`ls $MYHOME/lib/*jar | perl -pe 's/\s+/:/;'`$MYHOME/build
java -classpath $CP ims.tiger.gui.tigergrapheditor.SyntaxEditor $*
