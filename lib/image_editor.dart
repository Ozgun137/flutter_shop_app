

import 'package:flutter/material.dart';

import 'i_image_editor.dart';

class ImageEditor implements IImageEditor{
  @override
  void applyScreenActions(BuildContext context) {
    // TODO: implement applyScreenActions
      Navigator.pop(context);
  }

  @override
  void cancelScreenActions(BuildContext context) {
    // TODO: implement cancelScreenActions
   Navigator.pop(context);
  }

}