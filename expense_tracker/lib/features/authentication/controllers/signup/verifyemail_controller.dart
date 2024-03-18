import 'package:expense_tracker/data/repositories/authentication/authentication_repo.dart';
import 'package:expense_tracker/features/authentication/models/signup_model/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  ///  ---Variables---
  final otp = TextEditingController();
  final GlobalKey<FormState> otpkey = GlobalKey<FormState>();

  checkEmailVerificationStatus() {

    
    if (!otpkey.currentState!.validate()) {
      return;
    }

    AuthenticationRepository.instance.verifyOtp(Otp(otp: otp.text));
  }
}
