import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/pets.dart';

class DataRepository {
  // 1
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('pets');
  // 2
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }
  // 3
  Future<DocumentReference> addPet(Pet pet) {
    return collection.add(pet.toJson());
  }
  // 4
  void updatePet(Pet pet) async {
    await collection.doc(pet.referenceId).update(pet.toJson());
  }
  // 5
  void deletePet(Pet pet) async {
    await collection.doc(pet.referenceId).delete();
  }
}
