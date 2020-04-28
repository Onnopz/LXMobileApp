import 'package:flutter/material.dart';
import 'data_storage.dart';

class ChooseLo extends StatefulWidget {
  ChooseLo();

  @override
  _ChooseLoState createState() => _ChooseLoState();
}

class _ChooseLoState extends State<ChooseLo> {
  static final pageIndex = 1;
  static List<Widget> locList = [];

  void checkMatch(String str){
    setState(() {
        locList = [];

        for(int i = 0; i < LocationStorage.locationName.length; i++){
          if(LocationStorage.locationName[i].contains(str)){
            locList.add(LocationListItem(i, (){
              LocationStorage.target = i;
              Navigator.pop(context);
            }));
          }
        }

    });
  }
  
  @override
  void initState(){
    super.initState();
    setState(() {
      print("Initstate called");

      locList.clear();

      for(int i = 0; i < LocationStorage.locationName.length; i++){
                    locList.add(LocationListItem(i, (){
              LocationStorage.target = i;
              Navigator.pop(context);
            }));
      }
    });
  }


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
        backgroundColor: AppConstant.color_Background,
        body: Container(
          margin: EdgeInsets.fromLTRB(AppConstant.margin_mainLR,
              AppConstant.margin_mainTB, AppConstant.margin_mainLR, 0),
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
                          AppConstant.textSize_secondHead),

                      CustomTextField(
                          "Tell me what it is",
                          (String str){
                            checkMatch(str);
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
                  children: locList
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
