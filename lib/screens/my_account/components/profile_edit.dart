import 'package:flutter/material.dart';
import 'package:plant_app/components/custom_surfix_icon.dart';
import 'package:plant_app/components/default_button.dart';
import 'package:plant_app/components/form_error.dart';

import '../../../constants.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildFirstNameFormField(),
            SizedBox(height: (30)),
            buildLastNameFormField(),
            SizedBox(height: (30)),
            buildPhoneNumberFormField(),
            SizedBox(height: (30)),
            // buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: (40)),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    width: 130,
                    child: DefaultButton(
                      text: "تغيير",
                      press: () {
                        if (_formKey.currentState.validate()) {}
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 130,
                    child: DefaultButton(
                      text: "الغاء التغيير ",
                      press: () {
                        if (_formKey.currentState.validate()) {}
                      },
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        labelText: "العنوان",
        hintTextDirection: TextDirection.rtl,
        hintText: "ادخل العنوان",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
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
          child: CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        labelText: "رقم الهاتف",
        hintText: "أدخل رقم الهاتف",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
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
          child: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kLastNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kLastNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        labelText: "الأسم الأخير",
        hintText: "أدخل الأسم الأخير",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
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
          child: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        labelText: "الأسم الأول",
        hintText: "أدخل الأسم الأول",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
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
          child: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
        ),
      ),
    );
  }
}
