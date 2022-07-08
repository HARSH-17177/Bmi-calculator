import 'package:bmi/componnents/bottom_button.dart';
import 'package:bmi/componnents/reusable_card.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Myresult extends StatelessWidget {
  Myresult(
      {required this.interpretation,
      required this.bmiresult,
      required this.resultText});
  final String interpretation;
  final String resultText;
  final String bmiresult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              )),
          Expanded(
            flex: 6,
            child: reusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kresultcolor,
                  ),
                  Text(
                    bmiresult,
                    style: kbmitextstyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kbodytext,
                  ),
                ],
              ),
              colour: activecardcolor,
            ),
          ),
          bottombutton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
