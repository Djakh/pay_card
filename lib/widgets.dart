import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WidgetModel extends BaseViewModel {
  int selectedRadio = 0;
  BuildContext context;
  void setSelectedRadio(int value) {
    selectedRadio = value;
  }

  Widget getRadio() {
    return Row(
      children: [
        Radio(
          activeColor: Colors.green,
          value: 0,
          groupValue: selectedRadio,
          onChanged: (value) {
            setSelectedRadio(value);
            notifyListeners();
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
            height: 30.0,
            width: 80.0,
            child: Image.asset(
              "assets/click2.png",
              fit: BoxFit.fill,
            )),
        SizedBox(
          width: 120.0,
        ),
        Radio(
          value: 1,
          groupValue: selectedRadio,
          onChanged: (value) {
            setSelectedRadio(value);
            notifyListeners();
          },
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
            height: 20.0,
            width: 80.0,
            child: Image.asset(
              "assets/payme.png",
              fit: BoxFit.fill,
            )),
      ],
    );
  }

  Widget getText(String string) {
    return Text(
      string,
      style: TextStyle(
          color: Colors.grey[600],
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0),
    );
  }

  Widget getOrangeButton() {
    return Center(
      child: FlatButton(
        onPressed: () {
 Navigator.pop(context);

        },
        height: 50.0,
        minWidth: 350.0,
        color: Colors.orange[400],
        child: Text(
          "отправить кнопку",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
        ),
      ),
    );
  }

Widget getNumberButton (String number, String letters) {

return FlatButton (
  height: 53.0,
  onPressed: () {},
  color: Colors.grey[100],
  shape: RoundedRectangleBorder (side: BorderSide (color: Colors.grey[200], width: 2.0 )),
child: Column (children: [

Text (number,
style: TextStyle (color: Colors.black,
fontSize: 30.0,
fontStyle: FontStyle.normal,
fontWeight: FontWeight.w300
),),
Text(letters,
style: TextStyle (color: Colors.black,
fontSize: 10.0,
fontWeight: FontWeight.w300
),
)

],),

);


}

}
