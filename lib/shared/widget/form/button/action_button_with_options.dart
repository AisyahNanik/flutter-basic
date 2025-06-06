//#TEMPLATE reuseable_action_button_with_options
import 'package:flutter/material.dart';
import 'package:flutter_basic/core.dart';

class QActionButtonWithOptions extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;
  final Function onOptionPressed;
  const QActionButtonWithOptions({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.onOptionPressed,
  });

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    return Container(
      padding: const EdgeInsets.all(padding),
      height: 48 + (padding * 2),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                onPressed: () => onPressed(),
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          SizedBox(
            width: 68,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffe8e8e8),
                foregroundColor: const Color(0xff545d58),
              ),
              onPressed: () => onOptionPressed(),
              child: Icon(
                icon,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//#END
