import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'MySchedule.dart';
import 'HomePage.dart';

void main()=>runApp(
  ChangeNotifierProvider(
    create:(context)=>MySchedule() ,
    child: HomePage(),
  )
);