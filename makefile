target=server
src=$(wildcard ./*.cpp)
obj=$(patsubst ./*.cpp,./*.o,$(src))
CC=g++
$(target):$(obj)
	$(CC) $(obj) -o $(target) -g -D DEBUG -std=c++11 -lpthread -lopencv_core -lopencv_imgproc -lopencv_highgui  
%.o:%.cpp
	$(CC) -c $< -o $@ -g -W 

.PHONY:clean
clean:
	rm $(obj) $(target) -f

