# build rules
build_dir   = mkdir -p $(@D)

# build primary targets
$(APP):		$(PGM_OBJS) $(LIB)
	$(CXX) -o $@ $(PGM_OBJS) $(LFLAGS)

$(LIB):		$(LIB_OBJS)
	ar rcs $@ $^

$(TEST):	$(TST_OBJS) $(LIB)
	$(CXX) -o $@ $(TST_OBJS) $(LFLAGS)

# build all object files
$(BLD_DIR)/$(SRC_DIR)/%.o:     $(SRC_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)

$(BLD_DIR)/$(LIB_DIR)/%.o:     $(LIB_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)

$(BLD_DIR)/$(TST_DIR)/%.o:     $(TST_DIR)/%.cpp
	$(build_dir)
	$(CXX) -c $< -o $@ $(CFLAGS)


