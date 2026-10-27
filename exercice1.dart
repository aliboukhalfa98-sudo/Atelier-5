void main() {
  int a = 12;
  int b = 0;
 try {
    int resultat = a ~/ b; // division entière par 0
    print("Résultat : $resultat");
  } 
  catch (e) {
    print("Division impossible");
  }

  print("Le programme continue normalement.");
}