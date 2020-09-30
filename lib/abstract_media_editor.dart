
import 'package:flutter/material.dart';
import 'widgets/bottom_sheet_apply.dart';
import 'widgets/bottom_sheet_cancel.dart';

 class AbstractMediaEditor extends StatelessWidget {

   Widget mainView;
  
  @override
  Widget build(BuildContext context) {
    mainView =  Container(
      color: Colors.blueGrey[900],
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.3,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BottomSheetCancel(),
          Flexible(
            fit: FlexFit.tight,
            child: Container(width: MediaQuery.of(context).size.width),
          ),
          BottomSheetApply(),
        ],
      ),
    );

    return mainView;
  }

  void setView(Widget mainView){
     this.mainView = mainView;
   } 
}