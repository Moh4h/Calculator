import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:my_calculator/component/themes.dart';

class customElevatedButton extends StatelessWidget {
  const customElevatedButton({
    super.key,
    required this.onPressed,
    required this.mychild,
  });
  final VoidCallback? onPressed;

  final Widget? mychild;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        
        minimumSize: Size(double.infinity, 80),
        padding: EdgeInsets.zero
      ),
      onPressed: onPressed,
      child: mychild,
    );
  }
}
