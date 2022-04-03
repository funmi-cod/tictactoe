import 'dart:async';
import 'package:flutter/material.dart';

import 'package:tictactoe/widget/component/shape.dart';



class Field extends StatefulWidget {
  final int row;
  final int place;
  final double size;

  const Field(this.row, this.place, this.size);

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  bool disabled = false;
  bool restart = false;

  void handleClick(Function saveChoice, BuildContext context) {
    saveChoice(widget.row, widget.place, context);

    setState(() {
      disabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    //restart the game
    if (restart == true) {
      Future.delayed(Duration.zero, () {
        setState(() {
          disabled = false;
        });
        handleRestart();
      });
    }

    final Size size = MediaQuery.of(context).size;
    return Center(
      // the game space
      child: Container(
        width: widget.size / 4,
        height: widget.size / 3,
        decoration: BoxDecoration(
          border: determineBorder(widget.row, widget.place),
        ),
        child: TextButton(
          onPressed: disabled == true
              ? null
              : () => handleClick(state.saveChoice, context),
          child: disabled == true
              ? (movesList[widget.row][widget.place] == 'X'
              ? XSign(
            size.height * 0.07,
          )
              : movesList[widget.row][widget.place] == 'O'
              ? Circle(
            size.height * 0.07,
          )
              : SizedBox())
              : SizedBox(),
        ),
      ),
    );
  }
}