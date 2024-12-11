import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.name,
    required this.onTapped,
    required this.paddings,
    super.key});
  final String name;
  final VoidCallback onTapped;
  final EdgeInsets paddings;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 108,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.blueGrey
        ),
        alignment: Alignment.center,
        padding: paddings,
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
        ),
      ),
    );
  }
}
