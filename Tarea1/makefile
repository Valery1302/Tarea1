# Compilador y banderas
CC = gcc
CFLAGS = -Wall

# Archivos fuente y objetos
SRC = main.c usuarios.c productos.c
OBJ = $(SRC:.c=.o)

# Nombre del ejecutable
EXEC = sistema

# Regla principal
all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXEC)

# Compilación individual de cada .c
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Generar ensamblador .s
asm:
	$(CC) -S $(SRC)

# Desensamblar .o con objdump
objdump:
	objdump -d main.o > main_decompilado.s

# Limpiar archivos compilados
clean:
	rm -f *.o *.s $(EXEC)
