class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Función para cumplir años
  void cumplirAnios() {
    edad++; // Incrementa la edad en 1
    print('¡Feliz cumpleaños, $nombre! Ahora tienes $edad años.');
  }

  // Función para mostrar información
  void mostrarInformacion() {
    print('Nombre: $nombre, Edad: $edad años');
  }
}