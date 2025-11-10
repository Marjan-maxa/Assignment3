import 'package:flutter/material.dart';

import 'button_widget/button.dart';

class cal extends StatefulWidget {
  final VoidCallback toggle;
  const cal({super.key,required this.toggle});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  String output='0';
  String input='0';
  String operator='';
  double num1=0;
  double num2=0;

  void  buttonpress(String value)
  {
    print('User pressed $value');
    setState(() {
      if (value == 'AC') {
        output = '0';
        input = '0';
        operator = '';
        num1 = 0;
        num2 = 0;
      }
      else if (value == '←') { // backspace
        if (input.length > 1) {
          input = input.substring(0, input.length - 1);
        } else {
          input = '0';
        }
        output = input;
      }

      else if(['+','-','*','÷'].contains(value))
        {
          num1=double.parse(input);
          operator=value;
          input='';
          return;
        }

      else if (value == '=') {
        num2 = double.parse(input);
        if (operator == '+') {
          output = (num1 + num2).toString();
        } else if (operator == '-') {
          output = (num1 - num2).toString();
        } else if (operator == '*') {
          output = (num1 * num2).toString();
        } else if (operator == '÷') {
          output =
          num2 != 0 ? (num1 / num2).toString() : 'Error';
        }

      }
      else {
        if (value == '.' && input.contains('.')) return;

        if (input == '0' && value != '.') {
          input = value;
        } else {
          input += value;
        }

        output = input;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(onPressed: widget.toggle, icon: Icon(Theme.of(context).brightness==Brightness.dark?Icons.wb_sunny:Icons.nightlight_round,color: Colors.white,))
        ],
        centerTitle: true ,
        backgroundColor: Colors.blue,
        title: Text('Calculator',style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text('$num1 $operator $num2',style: TextStyle(fontSize: 20),),
                    Text('$output',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ]
              ),
                  ),
            ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      widget_oen(txt: '7', onclick: ()=> buttonpress('7'),),
                      widget_oen(txt: '8', onclick: () => buttonpress('8'),),
                      widget_oen(txt: '9', onclick: () => buttonpress('9'),),
                      widget_oen(txt: '←',color: Colors.green, onclick: () => buttonpress('←'),)
                    ],
                  ),
                  Row(
                    children: [
                      widget_oen(txt: '4', onclick: () => buttonpress('4'),),
                      widget_oen(txt: '5', onclick: () => buttonpress('5'),),
                      widget_oen(txt: '6', onclick: () => buttonpress('6'),),
                      widget_oen(txt: '+',color: Colors.green, onclick: () => buttonpress('+'),)
                    ],
                  ),
                  Row(
                    children: [
                      widget_oen(txt: '1', onclick: () => buttonpress('1'),),
                      widget_oen(txt: '2', onclick: () => buttonpress('2'),),
                      widget_oen(txt: '3', onclick: () => buttonpress('3'),),
                      widget_oen(txt: '-',color: Colors.green, onclick: () => buttonpress('-'),)
                    ],
                  ),
                  Row(
                    children: [
                      widget_oen(txt: 'AC', onclick: () => buttonpress('AC'),),
                      widget_oen(txt: '*', onclick: () => buttonpress('*'),),
                      widget_oen(txt: '÷', onclick: () => buttonpress('÷'),),
                      widget_oen(txt: '=',color: Colors.green, onclick: () => buttonpress('='),),
                    ],
                  ),
            Row(
              children: [
                widget_oen(txt: '0', onclick: () => buttonpress('0'),),
                widget_oen(txt: '.', onclick: () => buttonpress('.')),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


