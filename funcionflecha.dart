int multiplicar(int a, int b){
  return a*b;
}

int flechamultiplicar(int a, int b) => a*b;

double dividir(int a, int b){
  return a/b;

}
double flechadividir(int a, int b) => a/b;
//returnType functionName(parameters...) => expression;
void main(){
  print("Diego Ramirez mat: 22308051281091");
  print("llamando a ala funcion multiplicar");
  print("la multiplicacion es : ${multiplicar(10, 5)}");
  print("llamando a ala funcion flechamultiplicar");
  print("la multiplicacion es : ${flechamultiplicar(10, 5)}");
  print("llamando a ala funcion dividir");
  print("la division es : ${dividir(10, 3)}");
}