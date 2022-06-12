import 'package:flutter/material.dart';

class CWidgets {
  static Widget customExtendedButton(
      {required String text,
      required BuildContext context,
      required onTap,
      double? width,
      required bool isClickable}) {
    width ??= MediaQuery.of(context).size.width * 0.8;
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: isClickable ? 1 : 0.4,
        child: Container(
          width: width,
          height: 45,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
