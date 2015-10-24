# list all C++ source files in source, lib and test directories
PROG_SRCS 		= $(wildcard $(SRC_DIR)/*.cpp)
LIB_SRCS 		= $(wildcard $(LIB_DIR)/*.cpp)
MOCK_SRCS 		= $(wildcard $(WRAP_DIR)/MOCK*.cpp)
ALL_WRAP_SRCS	= $(wildcard $(WRAP_DIR)/*.cpp)
TEST_SRCS 		= $(wildcard $(TEST_DIR)/*.cpp)
WRAP_SRCS		= $(filter-out $(MOCK_SRCS), $(ALL_WRAP_SRCS))

PROG_OBJS 		= $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/$(SRC_DIR)/%.o, $(PROG_SRCS))
LIB_OBJS 		= $(patsubst $(LIB_DIR)/%.cpp, $(BUILD_DIR)/$(LIB_DIR)/%.o, $(LIB_SRCS))
TEST_OBJS 		= $(patsubst $(TEST_DIR)/%.cpp, $(BUILD_DIR)/$(TEST_DIR)/%.o, $(TEST_SRCS))
MOCK_OBJS 		= $(patsubst $(WRAP_DIR)/%.cpp, $(BUILD_DIR)/$(WRAP_DIR)/%.o, $(MOCK_SRCS))
WRAP_OBJS 		= $(patsubst $(WRAP_DIR)/%.cpp, $(BUILD_DIR)/$(WRAP_DIR)/%.o, $(WRAP_SRCS))
ALL_OBJS		= $(PROG_OBJS) $(LIB_OBJS) $(WRAP_OBJS) $(TEST_OBJS)
DEPENDS			= $(ALL_OBJS:.o=.d)

