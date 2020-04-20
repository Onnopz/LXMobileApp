import 'package:flutter/material.dart';
import 'package:lx_mobile_app/find_direction.dart';
import 'data_storage.dart';

class ChooseLo extends StatefulWidget {
  ChooseLo();

  @override
  _ChooseLoState createState() => _ChooseLoState();
}

class _ChooseLoState extends State<ChooseLo> {
  static final pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return
     GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);

        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },

      child:
      Scaffold(
        bottomNavigationBar: CustomNavigationBar((int i) {
          if (i != pageIndex) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CustomNavigationBar.page[i]));
          }
        }, pageIndex),
        backgroundColor: DataStorage.bg_Color,
        body: Container(
          margin: EdgeInsets.fromLTRB(DataStorage.mainMargin_LR,
              DataStorage.mainMargin_TB, DataStorage.mainMargin_LR, 0),
          child: Column(
            children: <Widget>[
              // This row is for BACK Button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomBackButton(context),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomText("Choose destination", 0, 18, 0, 20,
                          DataStorage.textSize_secondHead),

                      CustomTextField(
                          "Tell me what it is",
                          (String str){

                          }
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              HorizontalLine(),

              Expanded(
                child: ListView(
                  children: <Widget>[
                    LocationListItem(0, context),
                    LocationListItem(1, context),
                    LocationListItem(2, context),
                    LocationListItem(3, context),
                    LocationListItem(4, context),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );



  }
}
