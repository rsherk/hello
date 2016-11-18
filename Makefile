CPP_FILES := $(wildcard Hello/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o)))

hello: $(OBJ_FILES)
	c++ $(LD_FLAGS) -o $@ $^

obj/%.o: Hello/%.cpp
	mkdir -p obj
	c++ $(CC_FLAGS) -c -o $@ $<
