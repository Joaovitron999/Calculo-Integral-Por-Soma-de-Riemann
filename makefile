# Compilador C++
CC=g++
# Opções de compilação
CFLAGS=-c -Wall
# Bibliotecas necessárias
LIBS=
# Nome do arquivo executável
TARGET=main
# Arquivos fonte
SRCS=main.cpp

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(LIBS) $(SRCS) -o $(TARGET)

%.o: %.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(TARGET)