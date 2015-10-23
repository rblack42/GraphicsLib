# create dependency files
DEPS    = make.deps
.PHONY:
deps:	$(PROG_SRCS) $(LIB_SRCS) $(MOCK_SRCS) $(TEST_SRCS)	
	$(CXX) -MM $^  > $(DEPS) $(CFLAGS)
