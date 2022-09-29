/*Copyright (c) 2020 Razeware LLC

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom
the Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

Notwithstanding the foregoing, you may not use, copy, modify,
merge, publish, distribute, sublicense, create a derivative work,
and/or sell copies of the Software in any work that is designed,
intended, or marketed for pedagogical or instructional purposes
related to programming, coding, application development, or
information technology. Permission for such use, copying,
modification, merger, publication, distribution, sublicensing,
creation of derivative works, or sale is expressly withheld.

This project and source code may use libraries or frameworks
that are released under various Open-Source licenses. Use of
those libraries and frameworks are governed by their own
individual licenses.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.*/

import 'package:flutter/material.dart';
import 'package:knight_and_day/custom_app_bar.dart';
import 'package:knight_and_day/home/bar_chart.dart';
import 'package:knight_and_day/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _joustCounter = 0;
  int _breakCounter = 0;
  int _patrolCounter = 0;

  @override
  Widget build(BuildContext context) {
    final totalActivities = _joustCounter + _breakCounter + _patrolCounter;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Knight and Day',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BarChart(
            joust_counter: _joustCounter,
            break_counter: _breakCounter,
            patrol_counter: _patrolCounter,
          ),
          const SizedBox(
            height: 32.0,
          ),
          Text("You've done $totalActivities activities in total"),
          const SizedBox(
            height: 32.0,
          ),
          RaisedButton(
            child: const Text("Joust"),
            onPressed: () => setState(() { _joustCounter++; }),
          ),
          RaisedButton(
            child: const Text("Take break"),
            onPressed: () => setState(() { _breakCounter++; }),
          ),
          RaisedButton(
            child: const Text("Patrol"),
            onPressed: () => setState(() { _patrolCounter++; }),
          ),
        ],
      ),
    );
  }
}
