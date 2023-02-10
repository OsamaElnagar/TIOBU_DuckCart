import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'fonts.dart';

class DuckFormFields {
  static Widget duckTextFormField({
    hintText,
    String? label,
    String? Function(String?)? validator,
    onFieldSubmitted,
    onChanged,
    controller,
    keyboardType,
    focusNode,
    textInputAction,
    prefixIcon,
    height,
  }) {
    return SizedBox(
      height: height??70,
      child: TextFormField(
        textInputAction: textInputAction,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        style: GoogleFonts.montserrat(
          color: DuckColors.duckBlack,
        ),
        decoration: InputDecoration(
          prefixIcon:prefixIcon,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: DuckColors.duckMainColor,width: 3),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
                color: Colors.grey, fontWeight: FontWeight.w600),
            focusColor: Colors.red,
            contentPadding: const EdgeInsets.all(30)),
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }

  static Container duckPasswordFormField({
    hintText,
    String? label,
    onFieldSubmitted,
    String? Function(String?)? validator,
    onChanged,
    focusNode,
    required controller,
    required keyboardType,
    textInputAction,
  }) {
    return Container(
      height: 70,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: TextFormField(
        textInputAction: textInputAction,
        focusNode: focusNode,
        controller: controller,
        keyboardType: keyboardType,
        style: GoogleFonts.montserrat(color: DuckColors.duckWhite),
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          hintText: hintText,
          hintStyle: DuckTextStyles.duckHintMontserrat(fs: 17.0),
          contentPadding: const EdgeInsets.all(30),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.visibility),
          ),
          focusColor: Colors.grey,
        ),
        obscureText: true,
        validator: validator,
        onEditingComplete: () {},
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
