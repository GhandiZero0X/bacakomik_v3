import 'dart:convert';
import 'package:bacakomik_v3/config.dart';
import 'package:bacakomik_v3/widgets/custom_elevated_button.dart';
import 'package:bacakomik_v3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik_v3/core/app_export.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class RegisterPageScreen extends StatefulWidget {
  RegisterPageScreen({super.key});

  @override
  _RegisterPageScreenState createState() => _RegisterPageScreenState();
}

class _RegisterPageScreenState extends State<RegisterPageScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> register() async {
    try {
      Map<String, String> headers = {"Content-Type": "application/json"};
      var url = Uri.parse("${myConfig.url}/bacakomik/post_regis.php");
      var response = await http.post(url,
          headers: headers,
          body: jsonEncode(<String, dynamic>{
            "username": userNameController.text,
            "email": emailController.text,
            "password": passwordController.text,
          }));

      var data = jsonDecode(response.body);

      if (data["message"] == "Registrasi berhasil") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Registrasi berhasil"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
        ));
        Navigator.pushNamed(context, AppRoutes.loginPageScreen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Error"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
        ));
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  void cekRegister() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      register();
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
                  SizedBox(height: 67.v),
                  Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Sign up to start",
                    style: CustomTextStyles.bodyLargeGray50001,
                  ),
                  SizedBox(height: 70.v),
                  _buildContinueWithGoogle(context),
                  SizedBox(height: 40.v),
                  _buildContinueWithMeta(context),
                  SizedBox(height: 22.v),
                  Container(
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.all(51.h),
                    decoration: AppDecoration.gradientIndigoAToAmber.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildUserName(context),
                        SizedBox(height: 39.v),
                        _buildEmail(context),
                        SizedBox(height: 39.v),
                        _buildPassword(context),
                        SizedBox(height: 40.v),
                        GestureDetector(
                          onTap: () {
                            onTapTxtHaveaccountsign(context);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Have account?",
                                  style: CustomTextStyles.bodyLargeff000000,
                                ),
                                const TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "Sign in!",
                                  style: CustomTextStyles
                                      .titleMediumUbuntuffffffff
                                      .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildSignUp(context),
                        SizedBox(height: 8.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
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

  /// Section Widget
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

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Username",
      contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
      validator: (value) {
        if (value!.isEmpty) {
          return "Email tidak boleh kosong";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 37.v,
      text: "SignUp",
      buttonStyle: CustomButtonStyles.fillPrimary,
      onPressed: () {
        cekRegister();
      },
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  void onTapTxtHaveaccountsign(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  void onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}
