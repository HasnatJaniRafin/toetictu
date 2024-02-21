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
          child: Text(actionText),
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.pink[200], // Background color
          ),
        )
      ],
    );
  }
}
