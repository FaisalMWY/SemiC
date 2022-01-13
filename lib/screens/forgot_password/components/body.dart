import 'package:flutter/material.dart';
import 'package:plant_app/components/custom_surfix_icon.dart';
import 'package:plant_app/components/default_button.dart';
import 'package:plant_app/components/form_error.dart';
import 'package:plant_app/components/no_account_text.dart';
import 'package:plant_app/screens/sign_in/sign_in_screen.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: Column(
            children: [
              SizedBox(height: 800 * 0.04),
              Text(
                "نسيت كلمة المرور؟",
                style: TextStyle(
                  fontSize: (28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  'assets/images/forgot_password.png',
                ),
              ),
              // Text(
              //   "t",
              //   textAlign: TextAlign.center,
              // ),
              SizedBox(height: 800 * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                labelText: "البريد الإلكتروني",
                hintText: "أدخل بريدك الإلكتروني",
                // If  you are using latest version of flutter then lable text and hint text shown like this
                // if you r using flutter less then 1.20.* then maybe this is not working properly
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: kTextColor),
                  gapPadding: 10,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                ),
              ),
            ),
            SizedBox(height: (30)),
            FormError(errors: errors),
            SizedBox(height: 800 * 0.01),
            DefaultButton(
              text: "ارسل رمز التحقق",
              press: () {
                if (_formKey.currentState.validate()) {
                  // Do what you want to do
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                }
              },
            ),
            SizedBox(height: 800 * 0.01),
            NoAccountText(),
          ],
        ),
      ),
    );
  }
}
