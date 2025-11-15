#include <stdio.h>
#include "usuarios.h"
#include "productos.h"

int main() {
    if (!validarUsuario()) {
        printf("Acceso denegado.\n");
        return 0;
    }

    Producto productos[100];
    int n = 0;

    cargarProductos(productos, &n);
    registrarVenta(productos, n);

    printf("Venta registrada con éxito.\n");
    return 0;
}
