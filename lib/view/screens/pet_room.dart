
import 'package:flutter/material.dart';

class PetRoom extends StatelessWidget {

  const PetRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // TODO Change title
          title: const Text('name'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        // TODO Add pet detail
        body: const Text('Pet Details Comes Here'),
      ),
    );
  }
}