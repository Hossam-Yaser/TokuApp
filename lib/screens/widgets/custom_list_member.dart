import 'package:flutter/material.dart';

class CustomListMember extends StatelessWidget {
  const CustomListMember({
    required this.title,
    required this.containerColor,
    required this.onTap,
    super.key,
  });
  final String title;
  final Color containerColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        color: containerColor,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
