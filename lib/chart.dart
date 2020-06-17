import 'package:flutter/material.dart';
import 'package:state_management/MySchedule.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();

}

class _MyChartState extends State<MyChart> {
  List<Color> colorList = [
    Colors.purple[800],
    Colors.pinkAccent[200],
    Colors.green[300],
    Colors.yellow[200],
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder:(context,schedule,_){
       return PieChart(
          dataMap:_createData(schedule.stateManagementValue) ,
          chartRadius: MediaQuery.of(context).size.width / 1.5,
          showLegends: false,
          colorList: colorList,
        );
      }
    );
  }

  static Map<String, double> _createData(double stateManagementValue){
    Map<String, double> dataMap = Map();
    dataMap.putIfAbsent("State Management", () => stateManagementValue);
    dataMap.putIfAbsent("UI programming", () => 0.3);
    dataMap.putIfAbsent("UX", () => 0.1);
    dataMap.putIfAbsent("Backend", () => 0.2);
    return dataMap;
  }
}