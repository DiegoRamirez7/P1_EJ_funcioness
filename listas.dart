 void main(){
  //diego ramirez dominguez a.22308051281091
  
  print("diego ramirez dominguez mat:22308051281091");
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  print(numeros);
  print(numeros[0]);
  //listar los elementos de la lista con ciclo for
  for(int i = 0; i<numeros.length; i++){
    print(numeros[i]);
  }
  //lista tipo double con 5 elementos de estatura
  List<double> estaturas = [1.70,1.80,1.60,1.90,1.75];
  //lista de 5 nombres de personas
  List<String> nombres = ["juan","pedro","diego","maria","luis"];
  //imprimir la lista de estaturas y nombres
  for(int i = 0; i<estaturas.length; i++){
    print("nombre: {$nombres[i]} Estaura: ${estaturas[i]}");
  }
  

 }

