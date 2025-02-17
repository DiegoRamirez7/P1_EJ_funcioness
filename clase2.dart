import 'dart:io';

class Producto {
  int id_producto;
  String nombre_producto;
  String fecha_ingreso;
  double precio_producto;
  String descripcion_producto;
  int stock;

  Producto({
    required this.id_producto,
    required this.nombre_producto,
    required this.fecha_ingreso,
    required this.precio_producto,
    required this.descripcion_producto,
    required this.stock,
  });

  void captura() {
    print("\nIngrese los datos del producto:");

    stdout.write("ID Producto: ");
    id_producto = int.parse(stdin.readLineSync()!);

    stdout.write("Nombre del Producto: ");
    nombre_producto = stdin.readLineSync()!;

    stdout.write("Fecha de Ingreso (YYYY-MM-DD): ");
    fecha_ingreso = stdin.readLineSync()!;

    stdout.write("Precio del Producto: ");
    precio_producto = double.parse(stdin.readLineSync()!);

    stdout.write("Descripción del Producto: ");
    descripcion_producto = stdin.readLineSync()!;

    stdout.write("Stock: ");
    stock = int.parse(stdin.readLineSync()!);

    print("\nDatos del producto capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\nInformación del Producto:");
    print('ID Producto: $id_producto');
    print('Nombre: $nombre_producto');
    print('Fecha de Ingreso: $fecha_ingreso');
    print('Precio: \$${precio_producto.toStringAsFixed(2)}');
    print('Descripción: $descripcion_producto');
    print('Stock: $stock unidades');
  }
}

class Venta {
  int id_venta;
  int id_cliente;
  String fecha_venta;
  double total_venta;
  int id_empleado;
  int cant_productos;
  int id_producto;

  Venta({
    required this.id_venta,
    required this.id_cliente,
    required this.fecha_venta,
    required this.total_venta,
    required this.id_empleado,
    required this.cant_productos,
    required this.id_producto,
  });

  void captura() {
    print("\nIngrese los datos de la venta:");

    stdout.write("ID Venta: ");
    id_venta = int.parse(stdin.readLineSync()!);

    stdout.write("ID Cliente: ");
    id_cliente = int.parse(stdin.readLineSync()!);

    stdout.write("Fecha de Venta (YYYY-MM-DD): ");
    fecha_venta = stdin.readLineSync()!;

    stdout.write("Total de Venta: ");
    total_venta = double.parse(stdin.readLineSync()!);

    stdout.write("ID Empleado: ");
    id_empleado = int.parse(stdin.readLineSync()!);

    stdout.write("Cantidad de Productos: ");
    cant_productos = int.parse(stdin.readLineSync()!);

    stdout.write("ID Producto: ");
    id_producto = int.parse(stdin.readLineSync()!);

    print("\nDatos de la venta capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\nInformación de la Venta:");
    print('ID Venta: $id_venta');
    print('ID Cliente: $id_cliente');
    print('Fecha de Venta: $fecha_venta');
    print('Total de Venta: \$${total_venta.toStringAsFixed(2)}');
    print('ID Empleado: $id_empleado');
    print('Cantidad de Productos: $cant_productos');
    print('ID Producto: $id_producto');
  }
}

class Proveedor {
  int id_proveedor;
  String telefono_proveedor;
  String direccion_proveedor;
  String contacto_principal;
  String correo_electronico;
  String nombre_proveedor;

  Proveedor({
    required this.id_proveedor,
    required this.telefono_proveedor,
    required this.direccion_proveedor,
    required this.contacto_principal,
    required this.correo_electronico,
    required this.nombre_proveedor,
  });

  void captura() {
    print("\nIngrese los datos del proveedor:");

    stdout.write("ID Proveedor: ");
    id_proveedor = int.parse(stdin.readLineSync()!);

    stdout.write("Nombre del Proveedor: ");
    nombre_proveedor = stdin.readLineSync()!;

    stdout.write("Teléfono del Proveedor: ");
    telefono_proveedor = stdin.readLineSync()!;

    stdout.write("Dirección del Proveedor: ");
    direccion_proveedor = stdin.readLineSync()!;

    stdout.write("Contacto Principal: ");
    contacto_principal = stdin.readLineSync()!;

    stdout.write("Correo Electrónico: ");
    correo_electronico = stdin.readLineSync()!;

    print("\nDatos del proveedor capturados exitosamente.\n");
  }

  void mostrarDatos() {
    print("\nInformación del Proveedor:");
    print('ID Proveedor: $id_proveedor');
    print('Nombre: $nombre_proveedor');
    print('Teléfono: $telefono_proveedor');
    print('Dirección: $direccion_proveedor');
    print('Contacto Principal: $contacto_principal');
    print('Correo Electrónico: $correo_electronico');
  }
}

void main() {
  while (true) {
    print("\nSeleccione una opción:");
    print("1. Ingresar un Producto");
    print("2. Ingresar una Venta");
    print("3. Ingresar un Proveedor");
    print("4. Salir");

    stdout.write("Opción: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        Producto producto = Producto(
          id_producto: 0,
          nombre_producto: "",
          fecha_ingreso: "",
          precio_producto: 0.0,
          descripcion_producto: "",
          stock: 0,
        );
        producto.captura();
        producto.mostrarDatos();
        break;

      case '2':
        Venta venta = Venta(
          id_venta: 0,
          id_cliente: 0,
          fecha_venta: "",
          total_venta: 0.0,
          id_empleado: 0,
          cant_productos: 0,
          id_producto: 0,
        );
        venta.captura();
        venta.mostrarDatos();
        break;

      case '3':
        Proveedor proveedor = Proveedor(
          id_proveedor: 0,
          nombre_proveedor: "",
          telefono_proveedor: "",
          direccion_proveedor: "",
          contacto_principal: "",
          correo_electronico: "",
        );
        proveedor.captura();
        proveedor.mostrarDatos();
        break;

      case '4':
        print("Saliendo del sistema...");
        exit(0);

      default:
        print("Opción no válida. Intente de nuevo.");
    }
  }
}
