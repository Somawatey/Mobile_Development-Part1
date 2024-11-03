import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Custom buttons'),
      ),
      //backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              label: 'Submit',
              icon: Icons.done,
              position: IconPosition.left,
              type: ButtonType.primary,
            ),
            SizedBox(height: 10),
            CustomButton(
              label: 'Time',
              icon: Icons.timelapse,
              position: IconPosition.right,
              type: ButtonType.secondary,
            ),
             SizedBox(height: 10),
            CustomButton(
              label: 'Account',
              icon: Icons.account_box,
              position: IconPosition.right,
              type: ButtonType.disabled,
            ),
          ],
        ),
      ),
    ),
  ));
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition position;
  final ButtonType type;
  const CustomButton({
    required this.label,
    required this.icon,
    this.position = IconPosition.left,
    this.type = ButtonType.primary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: position == IconPosition.left ? Icon(icon) : SizedBox.shrink(),//use shrink to creates an invisible box with zero width and height
      label: position == IconPosition.right
          ? Row(
              mainAxisSize: MainAxisSize.min,// Row takes minimal width
              children: [
                Text(label),
                SizedBox(width: 8),
                Icon(icon),
              ],
            )// - If icon is on the right, show the label followed by the icon with spacing.
          : Text(label),// - If icon is on the left, show it next to the label or no icon it display only label
      style: ElevatedButton.styleFrom(backgroundColor: color()),
    );
  }

  Color color() {
    switch (type) {
      case ButtonType.primary:
        return Colors.green;
      case ButtonType.secondary:
        return Colors.blue;
      case ButtonType.disabled:
        return Colors.grey;
      default:
        return Colors.green;
    }
  }
}
