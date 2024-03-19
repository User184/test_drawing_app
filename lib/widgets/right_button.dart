import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class RightButton extends StatelessWidget {
  final void Function()? onPressed;
  const RightButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: 52,
        height: 52,
        child: FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: const Color(0xFFFFFFFF),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Image.asset('assets/images/vector_1.png'),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'RightButton StatelessWidget'),
          ),
      );
}
