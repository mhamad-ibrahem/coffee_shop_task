import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });
  final String text;
  final String icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 27,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: Color(0xffDEDEDE),
          )),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff303336)),
          )
        ],
      ),
    );
  }
}
