
import 'dart:io';

void main() {

            // Q1 : demander l'âge

  print("Entrez votre âge :");
  String? saisie = stdin.readLineSync();

  try {

            // Q2 : transformer le texte en nombre

    int age = int.parse(saisie ?? "");
    print("Vous avez $age ans.");
  } on FormatException catch (e) {

             // Q3 : format invalide

    print("Erreur : '$saisie' n'est pas un âge valide.");
    print("Détail : ${e.message}");
  }
}