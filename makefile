CC = arm-linux-gnueabihf-gcc  # Cross-compiler
CFLAGS = -I./src/headers -Wall -O2
#LDFLAGS = -lm `pkg-config --cflags --libs opencv4`

SRC = src/main.c #src/preprocess.c
OBJ = $(SRC:.c=.o)
TARGET = Abstract_RoadDet

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
