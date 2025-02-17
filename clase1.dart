class Persona {
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Método para saludar
  void saludar() {
    print("Hola soy $nombre");
  }

  // Método para cumplir años
  void cumpliranos() {
    edad++;
    print("Feliz cumpleaños $nombre! Ahora tienes $edad años.");
  }
}

void main() {
  print("diego ramirez dominguez mat:22308051281091");

  // Crear una instancia de Persona
  Persona persona = Persona("Diego", 20);

  // Acceder a los atributos
  print("nombre: ${persona.nombre}");
  print("edad: ${persona.edad}");

  // Llamar a los métodos
  persona.saludar();
  persona.cumpliranos(); // Aquí llama al nuevo método para incrementar la edad
}

