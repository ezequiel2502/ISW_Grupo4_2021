import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'size_config.dart';

const kPrimaryColor = Color(0xFFE76F51);
const kPrimaryLightColor = Color(0xFFF4A261);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFE76F51), Color(0xFFF4A261)],
);
const kSecondaryColor = Color(0xFF2A9D8F);
const kTextColor = Color(0xFF264653);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  fontFamily: "OpenSans",
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);


final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  labelStyle: GoogleFonts.openSans(),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
