import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kruchenko_test_app/blocs/render_bloc.dart';
import 'package:kruchenko_test_app/drawing_screen.dart';

@immutable
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RenderBloc(),
      child: const DrawingScreen(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'HomePage StatelessWidget'),
          ),
      );
}
