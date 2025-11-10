
import 'package:flutter/material.dart';

class widget_oen extends StatelessWidget {
  String txt;
  Color? color;
  final VoidCallback onclick;
   widget_oen({
    super.key,required this.txt,this.color,required this.onclick
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              padding: EdgeInsets.all(23),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8)
              ),
              backgroundColor: color?? Colors.grey[800],
            ),
            onPressed: onclick, child: Text(txt,style: TextStyle(fontSize: 21,color: Colors.white),)),
      ),
    );
  }
}