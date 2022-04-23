import 'vaccination.dart';

class Pet {
  String name;
  String? notes;
  String type;
  List<Vaccination> vaccinations;

  Pet(this.name,
      {this.notes, required this.type, required this.vaccinations});
}