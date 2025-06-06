// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  final String labeldata;
  final TextEditingController controller;
  final bool isMessagefield;
  const Textformfield({
    super.key,
    required this.labeldata,
    required this.controller,
    required this.isMessagefield,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        controller: controller,
        maxLines: isMessagefield ? 4 : 1,
        decoration: InputDecoration(
          label: Text(labeldata),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
