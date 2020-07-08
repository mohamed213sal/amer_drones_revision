import 'package:amerdrones/drones_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

import 'onboarding_drones_module.dart';

class OnBoardingDrones extends StatefulWidget {
  @override
  _OnBoardingDronesState createState() => _OnBoardingDronesState();
}

class _OnBoardingDronesState extends State<OnBoardingDrones> {
  //some properties for this class ya amer

  //int current= 0;

  List<OnBoardingDronesModule> GreatList = List<OnBoardingDronesModule>();

  //creating some methods for this class ua amer
  void GenerateList() {
    GreatList = [
      OnBoardingDronesModule(
          'First Page',
          'drones are very powerful tool for watching',
          'assets/images/bg.png',
          Icons.build),
      OnBoardingDronesModule(
          'Second Page',
          'drones are very powerful tool to own the sky',
          'assets/images/bg6.png',
          Icons.add),
      OnBoardingDronesModule(
          'Third Page',
          'drones are very powerful tool for you to watch your area',
          'assets/images/bg4.png',
          Icons.widgets),
      OnBoardingDronesModule(
          'Fourth Page',
          'drones are very powerful tool to avoid danger',
          'assets/images/bg3.png',
          Icons.add_a_photo),
    ];
  }

  Widget displayPageIndicators(int length) {
    //this is the ready plugin used from the internet to shorten our work ya amer

    return PageViewIndicator(
      pageIndexNotifier: hint,
      length: 4,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  ValueNotifier<int> hint = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    GenerateList();
    return Stack(
      children: <Widget>[
        PageView.builder(
          itemBuilder: (Buildcontext, index) {
            return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(
                          GreatList[index].content,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Transform.translate(
                      child: Icon(
                        GreatList[index].icon,
                        size: 80,
                        color: Colors.blue,
                      ),
                      offset: Offset(0, -50),
                    ),
                    Text(
                      GreatList[index].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        GreatList[index].description,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            );
          },
          itemCount: 4,
          onPageChanged: (index) {
            hint.value = index;
            print(hint.value);
          },
        ),
        Center(
          child: Transform.translate(
              offset: Offset(0, 140),
              child: displayPageIndicators(GreatList.length)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.redAccent,
                child: Text(
                  "GET STARTED",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DronesHomePage();
                  }));
                },
              ),
            ),
          ),
        )
      ],
    );
  }


}
