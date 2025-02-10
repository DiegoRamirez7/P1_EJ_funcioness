// Función que calcula el área de un rectángulo
double calcularArea(double largo, double ancho) {
  return largo * ancho;
}

// Función que imprime la descripción de una persona
void describirPersona(String nombre, int edad, String profesion) {
  print('Soy $nombre, tengo $edad años y soy $profesion.');
}

void main() {
  print('Diego Ramirez mat: 22308051281091');
  print("FUNCIONES CON PARAMETROS");
  print("llamando a la funcion calcular area");
  double area = calcularArea(4.0, 2.0); 
  print('El área del rectángulo es: $area');
  print("");
  print("llamando a la funcion describir persona");
  describirPersona('Diego', 28, 'Ingeniero');
}