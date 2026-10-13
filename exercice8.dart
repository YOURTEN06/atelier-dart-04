class Livre {
  String titre;
  String auteur;
  int _pages;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 0]) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  static void afficherTotalLivres() {
    print('Nombre total de livres : $totalLivres');
  }
}

void main() {
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry', 200);
  var livre2 = Livre('Les Misérables', 'Victor Hugo');

  livre1.afficherInfos();
  livre2.afficherInfos();

  print('Pages du premier livre : ${livre1.pages}');
  Livre.afficherTotalLivres();
}