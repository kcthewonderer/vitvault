// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        labelStyle: TextStyle(
          color: FlutterFlowTheme.of(context)
              .black40, // Label color similar to "Email Address" color in the image
        ),
        hintText: 'Enter your phone number',
        hintStyle: TextStyle(
          color: FlutterFlowTheme.of(context)
              .black40, // Hint color similar to "Enter your email address" in the image
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).black40), // Border color
          borderRadius:
              BorderRadius.circular(12), // Rounded corners similar to the image
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: FlutterFlowTheme.of(context)
                  .primaryText), // Color when field is focused
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      initialCountryCode: 'IN', // Set the default country code
      onChanged: (phone) {},
      validator: (phone) {
        if (phone == null || phone.completeNumber.isEmpty) {
          return 'Please enter a valid phone number';
        }
        return null;
      },
    );
  }
}
