import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class customIngredientsTextField extends StatelessWidget {
  const customIngredientsTextField({
    required this.itemName,
    required this.Quantity,
    super.key,
  });
  final String itemName;
  final String Quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: itemName,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: Quantity,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(width: 12),
        HugeIcon(
          icon: HugeIcons.strokeRoundedRemoveSquare,
          color: Colors.black,
          size: 30.0,
        ),
      ],
    );
  }
}
