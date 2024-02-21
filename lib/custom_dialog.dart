import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback callback;
  final String actionText;

  CustomDialog(this.title, this.content, this.callback, [this.actionText = "Play again"]);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: callback,
          child: Text(
            actionText,
            style: TextStyle(color: Colors.white), // Explicitly set text color here
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.pink[200], // Set background color here
          ),
        )
      ],
    );
  }
}
