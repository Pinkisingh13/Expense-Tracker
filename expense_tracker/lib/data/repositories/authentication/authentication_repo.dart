import 'dart:convert';
import 'dart:io';
import 'package:expense_tracker/common/widgets/success_screen/success_screen.dart';
import 'package:expense_tracker/features/authentication/models/signup_model/signup_model.dart';
import 'package:expense_tracker/features/authentication/screens/login/login.dart';
import 'package:expense_tracker/features/authentication/screens/signup/verify_email.dart';
import 'package:expense_tracker/navigation_menu.dart';
import 'package:expense_tracker/utils/constants/image_string.dart';
import 'package:expense_tracker/utils/constants/text_string.dart';
import 'package:expense_tracker/utils/popups/full_screen_loader.dart';
import 'package:expense_tracker/utils/popups/loaders.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// variables

  // final storage = GetStorage();
  final deviceStorage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    // Remove the Native Splash Screen
    FlutterNativeSplash.remove();

    // Redirect to the appropriate screen
    // screenRedirect();
  }

// Function to show Relevant Screen
  // screenRedirect() async {
  //   //  LocalStorage
  //   deviceStorage.writeIfNull('IsFirstTime', true);
  //   deviceStorage.read('IsFirstTime') != true
  //       ? Get.to(() => const LoginScreen())
  //       : Get.to( () => const WelcomeScreen());
  // }

  /// Register or Create Account
  Future<void> register(User data) async {
    try {
      http.Response response =
          await http.post(Uri.parse('http://192.168.1.9:3000/api/user/sendotp'),
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
              },
              body: jsonEncode(data.toJson()));

      print("StatusCode: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);

        // Show success message
        PLoaders.successSnackbar(title: 'Successfully registered');
        TFullScreenLoader.stopLoading();
        // Move to otp screen
        Get.offAll(() => const VerifyEmailScreen());
      } else {
        print('failed');
      }
    } catch (e) {
      print("catch: ${e.toString()}");
    }
  }

  /// ---- VERIFY OTP ----
  void verifyOtp(Otp data) async {
    try {
      http.Response response = await http.post(
        Uri.parse('http://192.168.1.9:3000/api/user/verifyotp'),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()),
      );

      print("StatusCode: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);

        // Show success message
        PLoaders.successSnackbar(title: 'Otp Successfully Verified');
        TFullScreenLoader.stopLoading();

        // Move to success screen
        Get.to(
          () => SuccessScreen(
            image: PImages.checkRegisterAnimation,
            title: PTexts.confirmEmail,
            subTitle: PTexts.confirmEmailSubTitle,
            onPressed: () {
              Get.offAll(() => const LoginScreen());
              Get.back();
            },
          ),
        );
      } else {
        print('failed');
      }
    } catch (e) {
      print("catch: ${e.toString()}");
    }
  }

  // -- Login --
  Future<void> login(Login data) async {
    try {
      http.Response response =
          await http.post(Uri.parse('http://192.168.1.9:3000/api/user/login'),
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
              },
              body: jsonEncode(data.toJson()));

      print("StatusCode: ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data);

        // Show success message
        PLoaders.successSnackbar(title: ' Logged in Successfully ');
        TFullScreenLoader.stopLoading();
        
        // Move to otp screen
        Get.offAll(() => const NavigationMenu());
      } else {
        print('failed');
      }
    } catch (e) {
      print("catch: ${e.toString()}");
    }
  }
}
