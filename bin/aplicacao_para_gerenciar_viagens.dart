void main() {
  escolherMeioTransporte(Transporte.skate);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos("Rio de Janeiro",registrosVisitados);

  Map<String,double> registrarPrecos = {};

  registrarPrecos["Rio de Janeiro"] = 1200;

  print(registrarPrecos);


}

Set<String> registrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte (Transporte locomocao){
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de CARRO para aventura!");
      break;
    case Transporte.bike:
      print("Vou de BIKE para aventura!");
      break;
    case Transporte.aviao:
      print("Vou de AVIAO para aventura!");
      break;
    default:
      print("Estou indo para aventura, isso que importa!");
  }

}

enum Transporte{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem,
}