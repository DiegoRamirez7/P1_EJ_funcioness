class Animal {
  // Atributos
  int id_animal;
  String nombre;
  String raza;

  // Constructor el nombre de la funcion es igual al nombre de la clase animal
  Animal(this.id_animal, this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  }// fin metodo comer
}// fin clase animal

class Perro extends Animal {
  // Constructor el nombre de la funcion es igual al nombre de la clase perro
  Perro(int id_animal, String nombre, String raza) : super(id_animal, nombre, raza);

  // Función correr
  void correr() {
    print('$nombre está corriendo.');
  }// fin metodo correr

  // Función dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }// fin metodo dormir
}// fin clase perro

void main() {
    print("diego ramirez dominguez mat:22308051281091 gpo 6-I");
  // Crear una instancia de Perro
  // nombre del objeto es tobi
  Perro tobi = Perro(1, 'Tobi', 'Labrador');

  // Llamar a las funciones
  tobi.comer();  // Heredado de Animal

  // Llamar a las funciones de la clase Perro
  tobi.correr(); // De la clase Perro
  tobi.dormir(); // De la clase Perro
}