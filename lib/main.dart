import 'package:flutter/material.dart';
import 'package:amerdrones/drones_pages/onboarding_drones.dart';
import 'package:amerdrones/drones_home_page.dart';
import 'package:amerdrones/utilities/app_theme.dart';

main(){
  runApp(DronesApp());

}

class DronesApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:OnBoardingDrones(),
      theme: AppTheme.MyTheme,
    );


  }
}
