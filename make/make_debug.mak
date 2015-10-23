.PHONY:
vars:

# project directories
	$(enfo SRC_DIR => $(SRC_DIR))
	$(info LIB_DIR => $(LIB_DIR))
	$(info TST_DIR => $(TST_DIR))
	$(info DOC_DIR => $(DOC_DIR))
	$(info BLD_DIR => $(BLD_DIR))

# project source files
	$(info PGM_SRCS => $(PGM_SRCS))
	$(info LIB_SRCS => $(LIB_SRCS))
	$(info TST_SRCS => $(TST_SRCS))

# build ojects
	$(info PGM_OBJS => $(PGM_OBJS))
	$(info LIB_OBJS => $(LIB_OBJS))
	$(info TST_OBJS => $(TST_OBJS))
