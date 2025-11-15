#ifndef PRODUCTOS_H
#define PRODUCTOS_H

typedef struct{
    char codigo[20];
    char nombre_producto[50];
    int cantidad;
    float costo;
    float precio;
} Producto;

void cargarProductos(Producto productos[], int *n);
void guardarProductos(Producto productos[], int n);
void registrarVenta(Producto productos[], int n);

#endif