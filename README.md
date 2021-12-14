# Synpathy

Tool for manual syntactical annotation (editable version of the SyntaxViewer from the [TIGERSearch](http://www.ims.uni-stuttgart.de/projekte/TIGER/TIGERSearch) project)

## Using it

For the official release from 2007, see [MPI Nijmegen](https://www.mpi.nl/tools/synpathy). This comes with precompiled binaries.

For the source release, you need a Unix-style environment with `bash`, `java`, `ant`, `make`, `perl`, `sed`, `wget` and `pandoc`.

Compile with

    $> make

If successful, it can be started with

    $> ./synpathy.sh

To start with a TIGER-XML file to annotate or previously annotated, run it with

    $> ./synpathy.sh YOUR_FILE

For example,

    $> ./synpathy.sh samples/CGN_demo.tig

Note that the conventional file ending for TIGER-XML files is `*.xml`.

## Source release

This has been tested under Ubuntu 20.04.3L.

Changes to official/stable version:
- added `Makefile` and `synpathy.sh`
- dropped jar file `batik-rasterizer.jar`. This blocked compilation with a path issue (apparently, a Windows-specific path definition somewhere in the JAR).
- GPL 2.0 > GPL 3.0

## Synpathy v.1.0.1 (stable version)

This refers to the [official release from MPI Nijmegen](https://www.mpi.nl/tools/synpathy), we only provide redirects.

| | |
| ----------------------------------- | ----------------------------------- |
| **Download**                           | [choose Installer](https://www.mpi.nl/tools/synpathy/install.htm)  |
| **Software requirements**      | Java 1.4 (or later) Runtime    Environment must be installed     |
| **Documentation**                     | For viewing and export options, see the appropriate part of the   [TIGERSearch                    manual](http://www.ims.uni-stuttgart.de/projekte/TIGER/TIGERSearch/manual.shtml) |
|                                   | For editing click on the Help     menu                              |
| **Release notes**                 | [read](https://www.mpi.nl/tools/synpathy/release-notes.html) |
| **Source code**                    | [Sources](https://www.mpi.nl/tools/synpathy/synpathy-1.0.1-src.tar.gz) available under GNU Public       License |
|                                   | [read](https://www.mpi.nl/tools/synpathy/src-release-notes.html) the source release notes.         |


## Example Set

For a proper demo you\'ll need  two files: one with annotated     sentences and one describing the syntax tags (\"features\").

| | |
| ----------------------------------- | ----------------------------------- |
| German [NEGRA  Corpus](http://www.coli.uni-saarland.de/projects/sfb378/negra-corpus/negra-corpus.html) | [Annotated sentences](samples/NEGRA_demo.tig) |
|                                   | [NEGRA Feature Definitions](samples/NEGRA-features.xml) |
| Dutch [Corpus Gesproken Nederlands](http://www.tst.inl.nl/putpage.php?file_id=30) | [Annotated sentences](samples/CGN_demo.tig) |
|                                   | [Same sentences (without tree) as import test file](samples/CGN_demo.txt)     |
|                                   | [CGN Feature Definitions](samples/CGN-features.xml) |
|                                   | [explanation](https://www.mpi.nl/tools/synpathy/syn_prot.pdf) of the set [in Dutch]|                                 |
| Exported sentences from Elan | [elan-example2.txt](samples/elan-example2.txt) (to  be imported by Synpathy) |
