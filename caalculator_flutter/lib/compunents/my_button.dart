import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String num ;
  final Color color;
  final VoidCallback onPressed;
  const MyButton({
    Key? key,
    required this.num,
    required this.color,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color
            ),
            child: Center(child: Text(num,style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'Sans'),)),
          ),
        ),
      ),
    );
  }
}