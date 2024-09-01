import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPress;
  final String label;
  final bool isOutlined, isOutLineWidth;
  final double borderRadius, outLineWidth, fontSize;
  final Color outLineColor, fontColor;
  final FontWeight fontWeight;

  const AppButton({
    Key? key,
    required this.label,
    this.isOutlined = false,
    this.onPress = null,
    this.borderRadius = 8.0,
    this.outLineWidth = 0.0,
    this.outLineColor = Colors.black,
    this.isOutLineWidth = false,
    this.fontColor = Colors.black,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    Function()? onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: OutlinedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        side: isOutLineWidth
            ? BorderSide(
                color: outLineColor,
                width: outLineWidth,
              )
            : null,
        backgroundColor: isOutlined
            ? Colors.transparent
            : Theme.of(context).colorScheme.primary,
        foregroundColor: isOutlined
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onPrimary,
      ),
      onPressed: onPress ?? () {},
      child: Text(
        label,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
