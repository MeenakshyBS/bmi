import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi/components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({required this.interpretation,required this.bmiResult,required this.resultText});
  late final String bmiResult;
  late final String resultText;
  late final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR',),
          backgroundColor: Theme.of(context).primaryColor
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 65.0),
                  child: Text(
                      'Your Result',
                       textAlign: TextAlign.center,
                       style: kTitleTextStyle,
                  ),
                ),

            ),
            Expanded(
              flex: 5,
              child:ReusableCard(
                colour:kReusableCardColor ,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                       style: kResultTextStyle,
                    ),
                    Text(
                        bmiResult,
                         style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center ,
                      style:kBodyTextStyle ,
                    ),

                    
                  ],


                ),

              ) ,
            ),
            BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: (){
                  Navigator.pop(context);

                }
            )
          ],

        ),
      ),
    );
  }
}
