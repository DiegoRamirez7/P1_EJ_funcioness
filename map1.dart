void main() {
  Map<int, String> meses = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre',
  };

  // Imprimir el Map completo
  print("Meses del año: $meses");

  // Acceder al nombre de un mes específico usando su número
  int numeroMes = 5;
  String nombreMes = meses[numeroMes]!;
  print("El mes $numeroMes es $nombreMes");

  // Recorrer el Map con foreach
  print("\nLista de meses:");
  meses.forEach((numero, nombre) {
    print("Mes $numero: $nombre");
  });
}
