import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String lable;
  final VoidCallback onTap;
  const DrawerButton({super.key, required this.lable, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(lable),
      ),
    );
  }
}
