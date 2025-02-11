void main() {
print("1 Escribe un programa que tome una lista de números enteros (int) y calcule la suma de todos sus elementos.");  
print("diego ramirez dominguez mat:22308051281091");

  // Lista de números enteros
  List<int> numeros = [1, 2, 3, 4, 5, 6];

  // Calcular la suma de los elementos de la lista
  int suma = numeros.reduce((a, b) => a + b);

  // Imprimir el resultado
  print("La suma de los elementos es: $suma");
}
