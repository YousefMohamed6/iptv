import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.49,
        child: SizedBox(
          width: 45,
          height: 45,
          child: Stack(
            children: [
              Positioned(
                left: 3.75,
                top: 3.75,
                child: Container(
                  width: 37.50,
                  height: 37.50,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/37x37"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.white,
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 15,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(width: 4, color: Color(0xFFE58A08)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
