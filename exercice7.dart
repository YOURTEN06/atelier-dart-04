class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}
void main() {
  Tache('Réviser Dart');
  Tache('Faire les exercices');
  Tache('Envoyer le travail sur GitHub');

  print(Tache.nombreTotal);
}