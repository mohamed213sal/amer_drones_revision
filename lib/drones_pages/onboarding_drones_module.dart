import 'package:flutter/material.dart';

//let us make class for creating or fill a list that represents all the content of the welcome or onboarding pages ya NavigatorUserMediaError
class OnBoardingDronesModule {
  String _title ;
  String _description ;
  String _image ;
  IconData _icon;

  //creating some styles ya amer

  OnBoardingDronesModule(
      this._title, this._description, this._image, this._icon);

  IconData get icon => _icon;

  String get content => _image;

  String get description => _description;

  String get title => _title;
}

