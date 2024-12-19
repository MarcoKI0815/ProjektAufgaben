import '../models/Trainingsplan.dart';
import 'DatabaseRepository.dart';

class MockDatabase implements DatabaseRepository {

 // Map zur Speicherung der Trainingspläne
 Map<String, Trainingsplan> trainingsPlaene = {};

 // Trainingsplan hinzufügen
 @override
 void addTrainingsplan (String id , Trainingsplan  newTrainingsPlan){
 trainingsPlaene[id] = newTrainingsPlan;
 }
 // Alle Trainingspläne abrufen
 @override
 List <Trainingsplan> getAllTrainingsPlaene(){
 return trainingsPlaene.values.toList(); 
 }
  // Trainingsplan entfernen
  @override
  void removeTrainingsPlan(String id) {
    if (trainingsPlaene.containsKey(id)) {
      trainingsPlaene.remove(id);
    } else {
      print('Item with ID $id not found.');
    }
  }
}