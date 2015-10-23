# list all C++ source files in source, lib and test directories
PGM_SRCS = $(wildcard $(SRC_DIR)/*.cpp)
LIB_SRCS = $(wildcard $(LIB_DIR)/*.cpp)
TST_SRCS = $(wildcard $(TST_DIR)/*.cpp)

PGM_OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BLD_DIR)/$(SRC_DIR)/%.o, $(PGM_SRCS))
LIB_OBJS = $(patsubst $(LIB_DIR)/%.cpp, $(BLD_DIR)/$(LIB_DIR)/%.o, $(LIB_SRCS))
TST_OBJS = $(patsubst $(TST_DIR)/%.cpp, $(BLD_DIR)/$(TST_DIR)/%.o, $(TST_SRCS))
