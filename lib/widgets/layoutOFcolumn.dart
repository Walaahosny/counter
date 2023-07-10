import 'package:couterappteams/widgets/textstyle.dart';
import 'package:flutter/material.dart';

import 'button.dart';
class columnBody extends StatefulWidget {
  const columnBody({super.key, required this.onPressed1, required this.onPressed2, required this.onPressed3, required this.Titletext, required this.Countertext, });


  final String Titletext;
  final String Countertext;

  final void Function() onPressed1;
  final void Function() onPressed2;

  final void Function() onPressed3;

  @override
  State<columnBody> createState() => _columnBodyState();
}

class _columnBodyState extends State<columnBody> {
  int teamAcounter = 0;
  int teamBcounter = 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           textstyle(text: widget.Titletext,),
          textstyle(text: widget.Countertext,size: 74,),
          BUTTON(text: 'Add 1 point', onPressed:widget.onPressed1

          ),
          BUTTON(text: 'Add 2 point', onPressed: widget.onPressed2)
          ,BUTTON(text: 'Add 3 point', onPressed: widget.onPressed3,)

        ],
      ),
    );
  }
}
