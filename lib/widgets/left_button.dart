import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class LeftButton extends StatelessWidget {
  final bool active;
  final void Function()? onPressed;
  const LeftButton({
    Key? key,
    this.active = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        label: Row(
          children: [
            Image.asset(
              'assets/images/undo_icon.png',
              color: active ? const Color(0xFFC6C6C8) : const Color(0xFF7D7D7D),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/vector_2.png',
              color: active ? const Color(0xFFC6C6C8) : const Color(0xFF7D7D7D),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/redo_icon.png',
              color: active ? const Color(0xFFC6C6C8) : const Color(0xFF7D7D7D),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        extendedPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'LeftButton StatelessWidget'),
          ),
      );
}
