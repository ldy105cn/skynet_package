# Use your path
SKYNET_PATH = ../../
TARGET = $(SKYNET_PATH)/cservice/package.so

$(TARGET) : service_package.c
	gcc -Wall -g --shared -fPIC -o $@ $^ -I$(SKYNET_PATH)/skynet-src

clean :
	rm $(TARGET)
install :
	cp -R lualib $(SKYNET_PATH)
	cp -R service $(SKYNET_PATH)
