#include <stdio.h>
#include <string.h>
#include <time.h>
#include "productos.h"

void cargarProductos(Producto productos[], int *n) {
    FILE *archivo = fopen("producto.txt", "r");
    *n = 0;
    if (!archivo) {
        printf("No se encontró producto.txt\n");
        return;
    }
    while (fscanf(archivo, "%[^,],%[^,],%d,%f,%f\n",
        productos[*n].codigo,
        productos[*n].nombre_producto,
        &productos[*n].cantidad,
        &productos[*n].costo,
        &productos[*n].precio) != EOF) {
        (*n)++;
    }
    fclose(archivo);
}

void guardarProductos(Producto productos[], int n) {
    FILE *archivo = fopen("producto.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(archivo, "%s,%s,%d,%.2f,%.2f\n",
                productos[i].codigo,
                productos[i].nombre_producto,
                productos[i].cantidad,
                productos[i].costo,
                productos[i].precio);
    }
    fclose(archivo);
}

void registrarVenta(Producto productos[], int n) {
    FILE *ventas = fopen("ventas.txt", "a+");
    int numFactura = 1;
    char linea[200];

    // obtener última factura
    while (fgets(linea, sizeof(linea), ventas))
        if (sscanf(linea, "%d,", &numFactura) == 1);
    numFactura++;

    time_t t = time(NULL);
    struct tm *tm = localtime(&t);
    char fecha[11];
    strftime(fecha, 11, "%Y-%m-%d", tm);

    int continuar = 1;
    while (continuar) {
        char codigo[20];
        int cantidad;
        printf("\nCódigo producto: ");
        scanf("%s", codigo);
        printf("Cantidad a vender: ");
        scanf("%d", &cantidad);

        int encontrado = 0;
        for (int i = 0; i < n; i++) {
            if (strcmp(productos[i].codigo, codigo) == 0) {
                encontrado = 1;
                if (productos[i].cantidad >= cantidad) {
                    float total = cantidad * productos[i].precio;
                    printf("%s x%d = %.2f\n", productos[i].nombre_producto, cantidad, total);

                    productos[i].cantidad -= cantidad;
                    fprintf(ventas, "%d,%s,%s,%d,%.2f,%.2f,%s\n",
                            numFactura, productos[i].codigo, productos[i].nombre_producto,
                            cantidad, productos[i].costo, productos[i].precio, fecha);
                } else {
                    printf("No hay suficiente inventario.\n");
                }
            }
        }
        if (!encontrado) printf("Producto no encontrado.\n");

        printf("¿Registrar otro producto? (1=Sí, 0=No): ");
        scanf("%d", &continuar);
    }

    fclose(ventas);
    guardarProductos(productos, n);
}
