import 'package:flutter/material.dart';
import 'package:deneme_app/i_media_editor.dart';
import 'package:deneme_app/image_editor.dart';

class BottomSheetCancel extends StatelessWidget {


   IMediaEditor mediaEditor = new ImageEditor();
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.cancel,
          color: Colors.white,
        ),
        onPressed: () {
        mediaEditor.cancelScreenActions(context);
        },
        alignment: Alignment.bottomLeft,
        iconSize: 36);
  }
}
