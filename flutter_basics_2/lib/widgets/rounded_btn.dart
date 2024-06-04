import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Widget? btnIcon; // Changed to nullable Widget
  final Color bgColor;
  final TextStyle? txtStyle;
  final VoidCallback? callBack;

  const RoundedButton({
    super.key,
    required this.btnName,
    this.btnIcon,
    this.bgColor = Colors.yellow,
    this.txtStyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
      ),
      onPressed: () {
        callBack!();
      },
      child: Row(
        children: [
          if (btnIcon != null) btnIcon!,
          SizedBox(width: btnIcon != null ? 8 : 0), // Add SizedBox only if btnIcon is not null
          Text(btnName, style: txtStyle),
        ],
      ),
    );
  }
}