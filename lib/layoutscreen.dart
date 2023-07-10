
import 'package:couterappteams/widgets/button.dart';
import 'package:couterappteams/widgets/layoutOFcolumn.dart';
import 'package:couterappteams/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int teamAcounter = 0;
  int teamBcounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const textstyle(
          text: 'Pointer Counter',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              columnBody(
                onPressed1: () {
                  setState(() {
                    teamAcounter = teamAcounter + 1;
                  });
                },
                onPressed2: () {
                  setState(() {
                    teamAcounter = teamAcounter + 2;
                  });
                },
                onPressed3: () {
                  setState(() {
                    teamAcounter = teamAcounter + 3;
                  });
                },
                Titletext: 'Team A',
                Countertext: '$teamAcounter',
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              columnBody(
                onPressed1: () {
                  setState(() {
                    teamBcounter = teamBcounter + 1;
                  });
                },
                onPressed2: () {
                  setState(() {
                    teamBcounter = teamBcounter + 2;
                  });
                },
                onPressed3: () {
                  setState(() {
                    teamBcounter = teamBcounter + 3;
                  });
                },
                Titletext: 'Team B',
                Countertext: '$teamBcounter',
              ),
            ],
          ),
          BUTTON(
            text: 'Reset',
            onPressed: () {
              setState(() {
                teamAcounter = 0;
                teamBcounter = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
