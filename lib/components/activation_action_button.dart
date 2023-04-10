import 'package:flutter/material.dart';

class ActivationActionButton extends StatelessWidget {
  const ActivationActionButton({
    Key? key,
    required this.color,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final Color color;
  final void Function() onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            label,
            style: const TextStyle( color: Colors.white ),
          ),
        ),
      ),
    );
  }
}
