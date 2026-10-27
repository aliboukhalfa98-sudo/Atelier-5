

// Q1 : classe d'exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() {
    return "MotdepasseCourtException : $message";
  }
}

// Q2 : la fonction lève maintenant notre exception personnalisée
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
        "Mot de passe trop court (${mp.length} caractères, minimum 6).");
  }
  print("Mot de passe '$mp' accepté.");
}

void main() {
  // Q3 : on attrape notre exception avec on ... catch
  try {
    verifierMotdepasse("abc");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : ${e.message}");
  }

  try {
    verifierMotdepasse("Boreal2026");
  } on MotdepasseCourtException catch (e) {
    print("Erreur : ${e.message}");
  }
}