import 'package:flutter/material.dart';
import 'package:pay_card/widgets.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WidgetModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData (color: Colors.grey[600]) ,
          elevation: 0.0,
          backgroundColor: Colors.grey[50],
          title: Text(
            "Оплата",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(child: model.getRadio()),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 17.0),
              child: Text(
                "Add your card",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 17.0),
              child: Row(
                children: [
                  Text(
                    "8600",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  model.getText("0000"),
                  SizedBox(
                    width: 7.0,
                  ),
                  model.getText("0000"),
                  SizedBox(
                    width: 7.0,
                  ),
                  model.getText("0000"),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 17.0),
              child: model.getText("00/00"),
            ),
            SizedBox(
              height: 90.0,
            ),
            model.getOrangeButton(),
            SizedBox(
              height: 17.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: model.getNumberButton("1", "")),
                    Expanded(child: model.getNumberButton("2", "ABC")),
                    Expanded(child: model.getNumberButton("3", "DEF"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: model.getNumberButton("4", "GHI")),
                    Expanded(child: model.getNumberButton("5", "JKL")),
                    Expanded(child: model.getNumberButton("6", "MNO"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: model.getNumberButton("7", "PQRS")),
                    Expanded(child: model.getNumberButton("8", "TUV")),
                    Expanded(child: model.getNumberButton("9", "WXYZ"))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        height: 53.0,
                        onPressed: () {},
                        color: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.grey[200], width: 2.0)),
                        child: Column(
                          children: [
                            Text(
                              "+✳#",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: model.getNumberButton("0", "")),
                    Expanded(
                      child: FlatButton.icon(onPressed: () {}, icon: Icon (Icons.backspace_outlined),
                      height: 53.0,
                      color: Colors.grey[100],
                    shape: RoundedRectangleBorder (side: BorderSide (color: Colors.grey[200], width: 2.0 )),
                       label: Text ("",
                       
                       
                       ),
                       )
                    ),
                  ],
                )
              ],
            )
          ],
        )),
      ),
      viewModelBuilder: () => WidgetModel(),
    );
  }
}
