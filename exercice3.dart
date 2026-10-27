// Exercice 3 : Lever une exception

// Q1 : lève une Exception si le mot de passe a moins de 6 caractères
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Le mot de passe doit contenir au moins 6 caractères.");
  }
  print("Mot de passe '$mp' accepté.");
}

void main() {
  // Q2 : appel avec try-catch
  
  try {
    verifierMotdepasse("abc");
  } catch (e) {
    print("Erreur : $e");
  }

  
  try {
    verifierMotdepasse("Boreal2026");
  } catch (e) {
    print("Erreur : $e");
  }
}