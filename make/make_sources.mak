# list all C++ source files in source, lib and test directories
PROG_SRCS 		= $(wildcard $(SRC_DIR)/*.cpp)
LIB_SRCS 		= $(wildcard $(LIB_DIR)/*.cpp)
ALL_TEST_SRCS 	= $(wildcard $(TEST_DIR)/*.cpp)
MOCK_SRCS 		= $(wildcard $(TEST_DIR)/MOCK_*.cpp)
TEST_SRCS		= $(filter-out $(MOCK_SRCS), $(ALL_TEST_SRCS))

PROG_OBJS 		= $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/$(SRC_DIR)/%.o, $(PROG_SRCS))
LIB_OBJS 		= $(patsubst $(LIB_DIR)/%.cpp, $(BUILD_DIR)/$(LIB_DIR)/%.o, $(LIB_SRCS))
TEST_OBJS 		= $(patsubst $(TEST_DIR)/%.cpp, $(BUILD_DIR)/$(TEST_DIR)/%.o, $(TEST_SRCS))
MOCK_OBJS 		= $(patsubst $(TEST_DIR)/%.cpp, $(BUILD_DIR)/$(TEST_DIR)/%.o, $(MOCK_SRCS))
