CXX = g++
CXXFLAGS = -std=c++0x -Wall -pthread
HACKING_SCRIPTS_DIR=hacking_scripts
.PHONY: clean all tar
all: hacking_script
hacking_script: $(HACKING_SCRIPTS_DIR)/main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^
clean:
	rm -f *.tar
