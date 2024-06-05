import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int curruntCount;

  const CounterWidget({super.key, required this.curruntCount,});

  @override
  Widget build(BuildContext context) {
    return Text('$curruntCount');
  }

}  