import 'package:expense_tracker/common/styles/spacing_style.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: PSpacingStyle.paddingWithAppBarHeight),
      ),
    );
  }
}
