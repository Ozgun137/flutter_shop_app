
import 'package:flutter/material.dart';
import '../widgets/bottom_sheet_apply.dart';
import'../widgets/bottom_sheet_cancel.dart';

class AdjustScreen extends StatelessWidget {

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
          child: Text('Adjust'),
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