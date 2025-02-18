import 'dart:io';

// Clase base Productos
class Productos {
  int id_producto;
  String nombre_producto;
  String fecha_ingreso;
  double precio_producto;
  String descripcion_producto;
  int stock;

  // Constructor
  Productos(this.id_producto, this.nombre_producto, this.fecha_ingreso,
      this.precio_producto, this.descripcion_producto, this.stock);

  // Función para capturar datos desde la interfaz de usuario
  void capturaDatos() {
    print("Ingrese el ID del producto:");
    id_producto = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del producto:");
    nombre_producto = stdin.readLineSync()!;

    print("Ingrese la fecha de ingreso del producto (YYYY-MM-DD):");
    fecha_ingreso = stdin.readLineSync()!;

    print("Ingrese el precio del producto:");
    precio_producto = double.parse(stdin.readLineSync()!);

    print("Ingrese la descripción del producto:");
    descripcion_producto = stdin.readLineSync()!;

    print("Ingrese el stock del producto:");
    stock = int.parse(stdin.readLineSync()!);
  }
}

// Clase DatosProductos que hereda de Productos
class DatosProductos extends Productos {
  // Constructor
  DatosProductos(
      int id_producto,
      String nombre_producto,
      String fecha_ingreso,
      double precio_producto,
      String descripcion_producto,
      int stock)
      : super(id_producto, nombre_producto, fecha_ingreso, precio_producto,
            descripcion_producto, stock);

  // Función para mostrar los datos del producto
  void mostrarDatos() {
    print("\nDatos del producto:");
    print("ID: $id_producto");
    print("Nombre: $nombre_producto");
    print("Fecha de ingreso: $fecha_ingreso");
    print("Precio: \$${precio_producto.toStringAsFixed(2)}");
    print("Descripción: $descripcion_producto");
    print("Stock: $stock");
  }
}

// Clase base Proveedores
class Proveedores {
  int id_proveedores;
  String telefono_proveedor;
  String direccion_proveedor;
  String contacto_principal;
  String correo_electronico;
  String nombre_proveedor;

  // Constructor
  Proveedores(
    this.id_proveedores,
    this.telefono_proveedor,
    this.direccion_proveedor,
    this.contacto_principal,
    this.correo_electronico,
    this.nombre_proveedor,
  );

  // Función para capturar datos desde la interfaz de usuario
  void capturaDatos() {
    print("Ingrese el ID del proveedor:");
    id_proveedores = int.parse(stdin.readLineSync()!);

    print("Ingrese el teléfono del proveedor:");
    telefono_proveedor = stdin.readLineSync()!;

    print("Ingrese la dirección del proveedor:");
    direccion_proveedor = stdin.readLineSync()!;

    print("Ingrese el contacto principal del proveedor:");
    contacto_principal = stdin.readLineSync()!;

    print("Ingrese el correo electrónico del proveedor:");
    correo_electronico = stdin.readLineSync()!;

    print("Ingrese el nombre del proveedor:");
    nombre_proveedor = stdin.readLineSync()!;
  }
}

// Clase DatosProveedores que hereda de Proveedores
class DatosProveedores extends Proveedores {
  // Constructor
  DatosProveedores(
    int id_proveedores,
    String telefono_proveedor,
    String direccion_proveedor,
    String contacto_principal,
    String correo_electronico,
    String nombre_proveedor,
  ) : super(
          id_proveedores,
          telefono_proveedor,
          direccion_proveedor,
          contacto_principal,
          correo_electronico,
          nombre_proveedor,
        );

  // Función para mostrar los datos del proveedor
  void mostrarDatos() {
    print("\nDatos del proveedor:");
    print("ID: $id_proveedores");
    print("Teléfono: $telefono_proveedor");
    print("Dirección: $direccion_proveedor");
    print("Contacto principal: $contacto_principal");
    print("Correo electrónico: $correo_electronico");
    print("Nombre: $nombre_proveedor");
  }
}

void main() {
    print("diego ramirez dominguez mat:22308051281091");

  // Crear una instancia de DatosProductos
  DatosProductos producto = DatosProductos(0, "", "", 0.0, "", 0);

  // Capturar los datos del producto
  producto.capturaDatos();

  // Mostrar los datos del producto
  producto.mostrarDatos();

  // Crear una instancia de DatosProveedores
  DatosProveedores proveedor = DatosProveedores(0, "", "", "", "", "");

  // Capturar los datos del proveedor
  proveedor.capturaDatos();

  // Mostrar los datos del proveedor
  proveedor.mostrarDatos();
}
