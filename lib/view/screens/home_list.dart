import 'package:flutter/material.dart';
import 'package:pet_medical/view/dialogs/add_pet_dialog.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key}) : super(key: key);
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  // TODO Add Data Repository
  final boldStyle =
      const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return _buildHome(context);
  }

  Widget _buildHome(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets'),
      ),
      // TODO Add StreamBuilder
      body: const Center(
        child: Text('Body'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addPet();
        },
        tooltip: 'Add Pet',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addPet() {
    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return const AddPetDialog();
      },
    );
  }

  // TODO Add _buildList
}