import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:flutter_hackathon/widgets/add_form.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implemen
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Experience'),
      ),
      body: AddForm(),
    );
  }

}