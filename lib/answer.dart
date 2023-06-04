import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() onSelect;
  final String text;
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  Answer(this.text, this.onSelect, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
          style: style,
          onPressed: onSelect,
          child: Text(
            text,
          )),
    );
  }
}
