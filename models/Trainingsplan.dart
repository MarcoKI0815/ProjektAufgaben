// Klasse: Trainingsplan
class Trainingsplan {
  String name;
  String ziel; // Der Plan ist für Abnehmen, Muskelaufbau etc. gedacht
  List<String> uebungen; // Liste von Übungen im Plan
  int dauerInWochen;

  Trainingsplan({
    required this.name,
    required this.ziel,
    required this.uebungen,
    required this.dauerInWochen,
  });

  //funktion zu ToString Geändert, ermöglicht String "trainingspläne" zu Printen.
 @override
  String toString() {
    return  "Trainingsplan: $name ,$ziel, $uebungen, $dauerInWochen";
    
  }
}
