


import 'package:deneme_app/image_editor.dart';
import 'package:flutter/material.dart';

import '../i_media_editor.dart';

class BottomSheetApply extends StatelessWidget {

  IMediaEditor mediaEditor = new ImageEditor();

  @override
  Widget build(BuildContext context) {
    return IconButton(
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
            mediaEditor.applyScreenActions(context);
            },
            alignment: Alignment.bottomRight,
            iconSize: 36,
          );
  }
}