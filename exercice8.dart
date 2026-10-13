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

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  @override
  void afficherInfos() {
    super.afficherInfos();
    print('Genre: $genre');
  }
}

void main() {
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry', 200);
  var livre2 = Livre('Les Misérables', 'Victor Hugo');

  livre1.afficherInfos();
  livre2.afficherInfos();
  print('Pages du premier livre : ${livre1.pages}');

  var roman1 = Roman("Le Crime de l'Orient-Express", 'Agatha Christie', 'Policier');
  var roman2 = Roman('Dune', 'Frank Herbert', 'Science-fiction');

  roman1.afficherInfos();
  roman2.afficherInfos();

  Livre.afficherTotalLivres();
}