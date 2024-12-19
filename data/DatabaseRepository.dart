import '../models/Trainingsplan.dart';

//Abstrakte Klasse als Vorlage für das Datenbank-Reposentory
abstract class DatabaseRepository {

//Create Methode
 void addTrainingsplan (String id , Trainingsplan  newTrainingsPlan);


 List <Trainingsplan> getAllTrainingsPlaene();

//Delete 
void removeTrainingsPlan(String id);




}


