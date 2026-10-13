class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print('Ceci est un média générique.');
  }
}
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Livre : $titre par $auteur.');
  }
}
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print('Ceci est un Film : $titre de $dureeMinutes minutes.');
  }
}
void main() {
  List<Media> catalogue = [
    Livre('Le Petit Prince', 'Antoine de Saint-Exupéry'),
    Livre('Les Misérables', 'Victor Hugo'),
    Film('Titanic', 195),
    Film('Inception', 148),
  ];

  for (var media in catalogue) {
    media.afficherType();
  }
}