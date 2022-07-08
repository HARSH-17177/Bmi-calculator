import 'package:bmi/calculator_brain.dart';
import 'package:bmi/componnents/bottom_button.dart';
import 'package:bmi/componnents/icon_content.dart';
import 'package:bmi/componnents/reusable_card.dart';
import 'package:bmi/componnents/round_iactionbutton.dart';
import 'package:bmi/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

enum Gender { male, female, nothing } // enum type

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 50;
  int age = 12;

  Gender selectedgender = Gender.nothing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                      child: reusableCard(
                        colour: selectedgender == Gender.male
                            ? activecardcolor
                            : inactivecardcolor, // if gender is male then color wil get value activecardcolor else color will get inactive card color

                        cardChild: newWidget(
                          icons: FontAwesomeIcons.mars,
                          name: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          selectedgender = Gender.female;
                        });
                      }),
                      child: reusableCard(
                          colour: selectedgender == Gender.female
                              ? activecardcolor
                              : inactivecardcolor, // if gender is male then color wil get value activecardcolor else color will get inactive card color
                          cardChild: newWidget(
                            icons: FontAwesomeIcons.venus,
                            name: 'FEMALE',
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: reusableCard(
                  colour: activecardcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: labeltextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(), //as text takes only string value
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'cm',
                            style: labeltextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xff8d8e98),
                            thumbColor: Color(0xffeb1555),
                            overlayColor: Color(0x29eb1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30)),
                        child: Slider(
                            value: height.toDouble(),
                            max: 300,
                            min: 120,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue
                                    .round(); //as height is integer it should store roundup value
                              });
                            }),
                      )
                    ],
                  )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                        colour: activecardcolor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: labeltextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'kg',
                                  style: labeltextStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Roundactionbuttonn(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Roundactionbuttonn(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus,
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: reusableCard(
                        colour: activecardcolor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: labeltextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Roundactionbuttonn(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                SizedBox(
                                  width: 10,
                                ),
                                Roundactionbuttonn(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    })
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            bottombutton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                Calculatorbrain calc = Calculatorbrain(
                    height: height,
                    weight:
                        weight); // this is used to create object of the class calculator brain
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Myresult(
                      bmiresult: calc.BMI(),
                      interpretation: calc.getINterpretation(),
                      resultText: calc.calculateresult(),
                    ),
                  ),
                );
              },
            )
          ],
        )
        // floatingActionButton: Theme(
        //     data: ThemeData(accentColor: Colors.pink),
        //     child:
        //         FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))),
        );
  }
}
