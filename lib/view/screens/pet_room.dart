import 'package:flutter/material.dart';
import 'package:pet_medical/models/pets.dart';
import 'package:pet_medical/view/widgets/pet_details.dart';

class PetRoom extends StatelessWidget {
  final Pet pet;
  const PetRoom({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // TODO Change title

          title: Text(pet.name),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        // TODO Add pet detail

        body: PetDetail(pet: pet),
      ),
    );
  }
}
