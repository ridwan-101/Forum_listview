import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SpaceTextField extends StatelessWidget {
  const SpaceTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey,
            offset: Offset(0, 8),
          )
        ],
      ),
      child: TextFormField(
        cursorColor: const Color(0xFF00A6CA),
        decoration: InputDecoration(
            hintText: 'Write Message',
            hintStyle: const TextStyle(
                color: Color(0xFF00A6CA),
                fontSize: 15,
                fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white))),
      ),
    );
  }
}

class SpaceIcon extends StatelessWidget {
  const SpaceIcon({
    super.key,
    this.iconName,
  });

  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF002E63),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey,
              offset: Offset(0, 8),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
          ),
        ));
  }
}
