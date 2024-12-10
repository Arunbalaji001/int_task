import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.name,
    required this.onTapped,
    super.key});
  final String name;
  final VoidCallback onTapped;

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
        child: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
        ),
      ),
    );
  }
}
