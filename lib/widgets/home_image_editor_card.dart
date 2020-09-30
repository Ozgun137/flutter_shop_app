import 'package:flutter/material.dart';
import '../screens/image_editor_screen.dart';

class HomeImageEditorCard extends StatelessWidget {
  final String title;
  final Color color;

  HomeImageEditorCard(this.title, this.color);

  void selectAction(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return ImageEditorScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectAction(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
