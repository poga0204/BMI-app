import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiresult, this.bmitext, this.interpreation);
  final String bmiresult;
  final String bmitext;
  final String interpreation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF1D2136),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitleText,
              ),
              padding: EdgeInsets.all(20),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmitext,
                      style: kResultText,
                    ),
                    Text(
                      bmiresult,
                      style: kBMIText,
                    ),
                    Text(
                      interpreation,
                      style: kBodyText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(() {
            Navigator.pop(context);
          }, 'RE-CALCULATE')
        ],
      ),
    );
  }
}
