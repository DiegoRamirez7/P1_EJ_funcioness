void main() {
  // Crear el Map de productos con las claves id_producto, nombre_producto, fecha_ingreso, precio_producto, descripcion_producto y stock
  Map<String, dynamic> productos = {
    'id_producto': 202,
    'nombre_producto': 'Ibuprofeno',
    'fecha_ingreso': DateTime(2025, 2, 14), // Fecha de ingreso (se utiliza DateTime)
    'precio_producto': 40.75,
    'descripcion_producto': 'Medicamento antiinflamatorio y analgésico',
    'stock': 150,
  };
   // Crear el Map de ventas con las claves id_venta, id_cliente, fecha_venta, total_venta, id_empleado, cant_productos, id_producto
  Map<String, dynamic> ventas = {
    'id_venta': 501,
    'id_cliente': 303,
    'fecha_venta': DateTime(2025, 2, 14), // Fecha de venta (se utiliza DateTime)
    'total_venta': 150.75,
    'id_empleado': 1201,
    'cant_productos': 3,
    'id_producto': [202, 305, 409], // Lista de productos involucrados en la venta
  };

 // Crear el Map de proveedores con las claves id_proveedor, telefono_proveedor, direccion_proveedor, contacto_principal, correo_electronico y nombre_proveedor
  Map<String, dynamic> proveedores = {
    'id_proveedor': 101,
    'telefono_proveedor': '+1234567890',
    'direccion_proveedor': 'Av. Principal 123, Ciudad XYZ',
    'contacto_principal': 'Juan Pérez',
    'correo_electronico': 'juan.perez@proveedor.com',
    'nombre_proveedor': 'Proveedor XYZ',
  };

  // Mostrar el Map completo
  print("Datos del producto: $productos");

  // Recorrer el Map usando foreach
  print("\nRecorriendo los datos del producto:");
  productos.forEach((key, value) {
    // Si el valor es un DateTime, formatearlo para una salida más amigable
    if (value is DateTime) {
      value = '${value.day}/${value.month}/${value.year}'; // Formato día/mes/año
    }
    print('$key: $value');
  });

  // Mostrar el Map completo
  print("Datos de la venta: $ventas");

  // Recorrer el Map usando foreach
  print("\nRecorriendo los datos de la venta:");
  ventas.forEach((key, value) {
    // Si el valor es un DateTime, formatearlo para una salida más amigable
    if (value is DateTime) {
      value = '${value.day}/${value.month}/${value.year}'; // Formato día/mes/año
    }
    // Si el valor es una lista (por ejemplo, los IDs de productos), mostrar los elementos
    if (value is List) {
      value = value.join(', '); // Convertir lista a una cadena de texto separada por comas
    }
    print('$key: $value');
  });

  // Mostrar el Map completo
  print("Datos del proveedor: $proveedores");

  // Recorrer el Map usando foreach
  print("\nRecorriendo los datos del proveedor:");
  proveedores.forEach((key, value) {
    print('$key: $value');
  });
}


