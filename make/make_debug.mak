.PHONY:
vars:

# project directories
	$(info SRC_DIR => $(SRC_DIR))
	$(info LIB_DIR => $(LIB_DIR))
	$(info WRAP_DIR => $(WRAP_DIR))
	$(info TEST_DIR => $(TEST_DIR))
	$(info DOC_DIR => $(DOC_DIR))
	$(info BUILD_DIR => $(BUILD_DIR))

# project source files
	$(info PROG_SRCS => $(PROG_SRCS))
	$(info LIB_SRCS => $(LIB_SRCS))
	$(info WRAP_SRCS => $(WRAP_SRCS))
	$(info MOCK_SRCS => $(MOCK_SRCS))
	$(info TEST_SRCS => $(TEST_SRCS))

# build ojects
	$(info PROG_OBJS => $(PROG_OBJS))
	$(info LIB_OBJS => $(LIB_OBJS))
	$(info WRAP_OBJS => $(WRAP_OBJS))
	$(info TEST_OBJS => $(TEST_OBJS))
	$(info MOCK_OBJS => $(MOCK_OBJS))

# build dependencies
	$(info DEPENDS => $(DEPENDS))

