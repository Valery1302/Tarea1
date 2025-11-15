#include <stdio.h>
#include <string.h>
#include "usuarios.h"

int validarUsuario() {
     FILE *archivo = fopen("vendedores.txt", "r");
    if (!archivo) {
        printf("No se encontró vendedores.txt\n");
        return 0;
    }
    Usuario u;
    char user[50], pass[50];
    int intentos = 0;

    while (intentos < 3) {
        printf("Usuario: ");
        scanf("%s", user);
        printf("Clave: ");
        scanf("%s", pass);

        rewind(archivo);
        int valido = 0;

        while (fscanf(archivo, "%[^,],%[^,],%[^\n]\n", u.usuario, u.clave, u.nombre) != EOF) {
            if (strcmp(user, u.usuario) == 0 && strcmp(pass, u.clave) == 0) {
                printf("Bienvenido %s\n", u.nombre);
                valido = 1;
                break;
            }
        }

        if (valido) {
            fclose(archivo);
            return 1;
        }

        intentos++;
        printf("Usuario o clave incorrecta (%d/3)\n", intentos);
    }

    fclose(archivo);
    return 0;
}