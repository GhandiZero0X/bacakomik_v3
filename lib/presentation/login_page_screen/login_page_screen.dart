import 'dart:convert';
import 'package:bacakomik_v3/config.dart';
import 'package:bacakomik_v3/widgets/custom_elevated_button.dart';
import 'package:bacakomik_v3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';
import 'package:http/http.dart' as http;

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  _LoginPageScreenState createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> login() async {
    try {
      Map<String, String> headers = {"Content-Type": "application/json"};
      var url = Uri.parse("${myConfig.url}/bacakomik/post_login.php");
      var response = await http.post(url,
          headers: headers,
          body: jsonEncode(<String, dynamic>{
            "email": emailController.text,
            "password": passwordController.text,
          }));

      var data = jsonDecode(response.body);

      if (data["status"] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(data["message"]),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 5),
        ));
        Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(data["message"]),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
        ));
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Could not connect to the server.'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 5),
      ));
    }
  }

  void cekLogin() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      login();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 79.v),
                  Text(
                    "Welcome",
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Sign in to start",
                    style: CustomTextStyles.bodyLargeGray50001,
                  ),
                  SizedBox(height: 73.v),
                  _buildContinueWithGoogle(context),
                  SizedBox(height: 40.v),
                  _buildContinueWithMeta(context),
                  SizedBox(height: 21.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtHaventaccount(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Haven't account?",
                            style: CustomTextStyles.bodyLargeff414141,
                          ),
                          const TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Sign up!",
                            style: CustomTextStyles.bodyLargeff1f79ff.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildEmail1(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContinueWithGoogle(BuildContext context) {
    return CustomElevatedButton(
      width: 280.h,
      text: "Continue with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 11.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          width: 28.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
      buttonTextStyle: CustomTextStyles.bodyLarge16,
    );
  }

  Widget _buildContinueWithMeta(BuildContext context) {
    return CustomElevatedButton(
      width: 280.h,
      text: "Continue with Meta",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 19.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMeta,
          width: 27.h,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
    );
  }

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
    );
  }

  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return CustomElevatedButton(
      height: 39.v,
      text: "SignIn",
      margin: EdgeInsets.only(
        left: 12.h,
        right: 13.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      onPressed: () {
        cekLogin();
      },
    );
  }

  Widget _buildEmail1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 59.v,
      ),
      decoration: AppDecoration.gradientIndigoAToAmber.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildEmail(context),
          SizedBox(height: 42.v),
          _buildPassword(context),
          SizedBox(height: 52.v),
          _buildSignIn(context),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }

  void onTapTxtHaventaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerPageScreen);
  }

  void onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageContainerScreen);
  }
}
