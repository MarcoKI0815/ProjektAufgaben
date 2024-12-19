import 'data/DatabaseRepository.dart';
import 'data/mock_database.dart';
import 'models/Trainingsplan.dart';


void main () {
  DatabaseRepository mockDatabase =  MockDatabase (); 
  Trainingsplan bauchBeinePo =  Trainingsplan (
  name: "Bauch Training",
  ziel: "Bauch Muskeln Trainiren", 
  uebungen: ["Liegestütze", "Kniebeugen", "Plank", "Burpees"],
  dauerInWochen: 2 );
 

 mockDatabase.addTrainingsplan( "1" , bauchBeinePo); 

  Trainingsplan bizeps =  Trainingsplan (
  name: "Bizeps Training",
  ziel: "Dicke Arme", 
  uebungen: ["Bizeps Curls", "Liege Stütze",],
  dauerInWochen: 4 );
  mockDatabase.addTrainingsplan( "2" , bizeps); 
  List <Trainingsplan> getAllTrainingsPlaene = mockDatabase.getAllTrainingsPlaene();

  print(getAllTrainingsPlaene);

  mockDatabase.removeTrainingsPlan("1");

  getAllTrainingsPlaene = mockDatabase.getAllTrainingsPlaene();

  print(getAllTrainingsPlaene);
}