import 'package:flutter/material.dart';
import 'package:motor_quick_quote/common/styling.dart';

class BrandedAppBar extends StatelessWidget implements PreferredSizeWidget {
  BrandedAppBar({Key key})
      : preferredSize = Size.fromHeight(70.0),
        super(key: key);

  @override
  final Size preferredSize;

  /// Generates the default top bar including font awesome icon.
  Widget build(BuildContext context) {
    // generate the app bar
    return AppBar(
      leading: Container(), // Disable to back button.
      primary: true,
      centerTitle: true,
      elevation: 2.0,

      backgroundColor: Styling.white,
      title: SizedBox(width: MediaQuery.of(context).size.width / 3, child: Image.asset('assets/admiral_logo.png')),
    );
  }
}
