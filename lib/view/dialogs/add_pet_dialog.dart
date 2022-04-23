import 'package:flutter/material.dart';

class AddPetDialog extends StatefulWidget {
  const AddPetDialog({Key? key}) : super(key: key);

  @override
  _AddPetDialogState createState() => _AddPetDialogState();
}

class _AddPetDialogState extends State<AddPetDialog> {
  String? petName;
  String character = '';

  // TODO Add Data Repository

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Add Pet'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                autofocus: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter a Pet Name'),
                onChanged: (text) => petName = text,
              ),
              RadioListTile(
                title: const Text('Cat'),
                value: 'cat',
                groupValue: character,
                onChanged: (value) {
                  setState(() {
                    character = (value ?? '') as String;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Dog'),
                value: 'dog',
                groupValue: character,
                onChanged: (value) {
                  setState(() {
                    character = (value ?? '') as String;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Other'),
                value: 'other',
                groupValue: character,
                onChanged: (value) {
                  setState(() {
                    character = (value ?? '') as String;
                  });
                },
              )
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel')),
          TextButton(onPressed: () {
            // TODO Add New Pet to repository
          }, child: const Text('Add')),
        ]);
  }
}
