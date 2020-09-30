import 'package:deneme_app/widgets/bottom_sheet_apply.dart';
import 'package:deneme_app/widgets/bottom_sheet_cancel.dart';
import 'package:flutter/material.dart';

class StickersScreen extends StatelessWidget {

  Widget mainView = Container(
    color: Colors.blueGrey[900],
    height: 200,
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BottomSheetCancel(),
        SizedBox(
          width: 125,
        ),
        Center(
          child: Text('Stickers'),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(),
        ),
        BottomSheetApply(),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return mainView;
  }
}
