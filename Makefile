all: README.md samples src
	@for file in release-notes.html src-release-notes.html; do \
		if [ ! -e $$file ]; then wget https://www.mpi.nl/tools/synpathy/$$file; fi; \
	done;

	@# we give the license a conventional name
	@if [ -e gpl.txt ]; then \
		if [ -e LICENSE ]; then \
			rm gpl.txt; \
		fi;\
	fi;\

	@# running the original build script
	ant

README.md:
	@# to create the initial version of README.md
	pandoc https://www.mpi.nl/tools/synpathy.html -t markdown > README.md;

src:
	if [ ! -e synpathy-1.0.1-src.tar.gz ]; then \
		wget https://www.mpi.nl/tools/synpathy/synpathy-1.0.1-src.tar.gz;\
	fi;
	tar -xvf synpathy-1.0.1-src.tar.gz --strip-components=1

samples:
	mkdir samples
	cd samples; \
	wget -nc https://www.mpi.nl/tools/synpathy/NEGRA_demo.tig;\
	wget -nc https://www.mpi.nl/tools/synpathy/NEGRA-features.xml;\
	wget -nc https://www.mpi.nl/tools/synpathy/CGN_demo.txt;\
	wget -nc https://www.mpi.nl/tools/synpathy/CGN_demo.tig; \
	wget -nc https://www.mpi.nl/tools/synpathy/CGN-features.xml;\
	wget -nc https://www.mpi.nl/tools/synpathy/elan-example2.txt;\
