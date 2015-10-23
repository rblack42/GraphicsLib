# Makefile for cosc1337 Graphics Library
#     this Makefile has been factored to make it easier to read
#     all other parts are in the ./make directory

# list what to build here
APP		= glDemo
LIB		= libcosc1337.a
TEST	= glTest

# list project directories here -------------------------------------
SRC_DIR = src
LIB_DIR = lib
TST_DIR = test
DOC_DIR = documentation
BLD_DIR	= build

CXX		= g++
CFLAGS	= -I$(LIB_DIR)
LFLAGS  = -L.
RM		= rm -rf

# fetch a list of all project source files
include make/make_sources.mak

# all build targets are below this line -----------------------------
all:	$(APP) $(LIB) $(TEST) 

docs:
		@mkdir -p $(BLD_DIR)/html/doxygen
		cd $(DOC_DIR) $$ doxygen
		cd $(DOC_DIR) && make html

spelling:
		@mkdir -p $(BLD_DIR)/html/spelling
		cd $(DOC_DIR) $$ make spelling

clean:
	$(RM) $(BLD_DIR)

# implicit build rules follow----------------------------------------
include make/make_build.mak

# uncomment this line to see defined variables with "make vars"
include make/make_debug.mak

