// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  Result(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You did it!',
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(onPressed: resetHandler, child: Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
