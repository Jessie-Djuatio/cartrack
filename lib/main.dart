import 'package:cartrack/app.dart';
//import 'package:cartrack/routes/login/home/home.dart';
import 'package:cartrack/routes/login/login.dart';
import 'package:flutter/material.dart' show runApp;

void main() => runApp(CarTrackApp(CarTrackAppSession(child: LoginPage())));

  