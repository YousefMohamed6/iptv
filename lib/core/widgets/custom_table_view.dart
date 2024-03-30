import 'package:flutter/widgets.dart';

class CustomTableView extends StatelessWidget {
  const CustomTableView({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.30,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff999999),
            width: 4,
          ),
        ),
        child: child,
      ),
    );
  }
}
