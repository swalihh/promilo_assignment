import 'package:flutter/material.dart';
import 'package:promilo/resources/constants/colors.dart';
import 'package:promilo/resources/constants/style.dart';
import 'package:promilo/resources/strings/login_string.dart';
import 'package:promilo/resources/widgets/forgetpass_widget.dart';
import 'package:promilo/resources/widgets/media_widget.dart';
import 'package:promilo/resources/widgets/orwidget.dart';
import 'package:promilo/resources/widgets/textfield_widget.dart';
import 'package:promilo/utils/validations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final signUpKey = GlobalKey<FormState>();

  late ValueNotifier<bool> isButtonEnabled;

  @override
  void initState() {
    super.initState();
    isButtonEnabled = ValueNotifier(false);
    usernameController.addListener(updateButtonState);
    passwordController.addListener(updateButtonState);
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    isButtonEnabled.dispose();
    super.dispose();
  }

  void updateButtonState() {
    isButtonEnabled.value = usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: signUpKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                Center(
                  child: Text(
                    LoginString.appname,
                    style: Apptext.smallDark,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.1,
                ),
                Center(
                  child: Text(
                    LoginString.welcome,
                    style: Apptext.mediumDark,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.06,
                ),
                SignUpTextField(
                  controller: usernameController,
                  validator: (p0) => Validations.isEmail(p0),
                  hintText: LoginString.signinHint,
                  label: LoginString.signinlabel,
                  labeltwo: LoginString.signinlabeltwo,
                  labelStyle: Apptext.label,
                ),
                const SizedBox(
                  height: 15,
                ),
                SignUpTextField(
                  controller: passwordController,
                  obscureText: true,
                  validator: (p0) => Validations.isPassword(p0),
                  hintText: LoginString.passwordHInt,
                  label: LoginString.passwordtext,
                  labelStyle: Apptext.label,
                ),
                const ForgetpasswordWidget(),
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: isButtonEnabled,
                  builder: (context, value, child) {
                    return ElevatedButton(
                      onPressed: value ? () {} : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.labelcolor,
                        fixedSize:
                            Size(screensize.width, screensize.height * 0.01),
                      ),
                      child: Text(
                        LoginString.signup,
                        style: Apptext.buttonlabel,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: screensize.height * 0.03,
                ),
                const OrWidget(),
                SizedBox(
                  height: screensize.height * 0.03,
                ),
                const SocialMedias(),
                SizedBox(
                  height: screensize.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(LoginString.buisness),
                    Text(LoginString.noAccount)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LoginString.login,
                      style: Apptext.secondlabel,
                    ),
                    Text(
                      LoginString.signupu,
                      style: Apptext.secondlabel,
                    )
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.03,
                ),
                Text(LoginString.conditiontext1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(LoginString.conditiontext0),
                    Text(
                      LoginString.conditiontext2,
                      style: Apptext.terms,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
