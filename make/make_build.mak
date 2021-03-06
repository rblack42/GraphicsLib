# build rules
build_dir   = mkdir -p $(@D)

# build primary targets
$(APP):		$(PROG_OBJS) $(LIB) $(WRAPLIB)
	$(CXX) -o $@ $(PROG_OBJS) $(LFLAGS)

$(LIB):		$(LIB_OBJS)
	ar rcs $@ $^

$(MOCKLIB):	$(MOCK_OBJS)
	ar rcs $@ $^

$(WRAPLIB):	$(WRAP_OBJS)
	ar rcs $@ $^

$(TEST):	$(TEST_OBJS) $(LIB) $(MOCKLIB)
	$(CXX) -o $@ $(TEST_OBJS) $(TFLAGS)

# build all object files
$(BUILD_DIR)/$(SRC_DIR)/%.o:     $(SRC_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)

$(BUILD_DIR)/$(LIB_DIR)/%.o:     $(LIB_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)

$(BUILD_DIR)/$(WRAP_DIR)/%.o:	$(WRAP_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)

$(BUILD_DIR)/$(TEST_DIR)/%.o:     $(TEST_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)


