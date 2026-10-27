
import 'dart:io';

// Exception personnalisée
class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() {
    return "NombreNegatifException : $message";
  }
  }

  void main() {
  // Q1 : demander un nombre
  print("Entrez un nombre :");
  String? saisie = stdin.readLineSync();

   // Q4 : try, catch et finally
  try {
    int nombre = int.parse(saisie ?? "");

       // Q2 
    if (nombre < 0) {
      throw NombreNegatifException("Le nombre $nombre est négatif.");
    }

    // Q3 
    print("Le carré de $nombre est ${nombre * nombre}.");
  } on NombreNegatifException catch (e) {
    print("Erreur : ${e.message}");
  } on FormatException {
    print("Erreur : '$saisie' n'est pas un nombre valide.");
  } finally {
    print("Fin du programme.");
  }
}