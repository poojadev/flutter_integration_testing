import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../common/themes/button_theme.dart';
import '../../../common/themes/text_form_field_theme.dart';
import '../../../common/themes/text_theme.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  Widget textFields(String hint,TextEditingController textEditingController,Key textFieldKey,
      TextInputType textInputType)
  {
    return

      Container(
        height: MediaQuery.of(context).size.height*0.060,
        margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
          child: TextFormField(
          key: textFieldKey,
          controller: textEditingController,
          keyboardType: textInputType,
          style: const TextStyle(color: Colors.black, fontSize: 16),
          decoration: basicTheme(hint),
        ));
  }

  Widget registrationForm()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      textFields('Name', nameController, const Key('registerName'), TextInputType.text),
      textFields('Email', emailController, const Key('registerEmailId'), TextInputType.emailAddress),
      textFields('Password', passwordController, const Key('registerPassword'), TextInputType.visiblePassword),
      textFields('Confirm Password', confirmPasswordController, const Key('registerCPassword'), TextInputType.visiblePassword),
    ],);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          color:Colors.blueGrey.shade700,
          alignment: Alignment.center,
            child:
        SingleChildScrollView(child:
          Wrap(
        children: [
          Container(
            alignment: Alignment.center,
              child:
          Text('Registration',style: titleTextBold,)),
      registrationForm(),
      Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
          child:
      ElevatedButton(
          style: basicElevatedButtonStyle,
          onPressed: () {
            print('Pressed');
            context.go('/homepage');

      }, child:  Text('Submit',style: displayNormalTextBold,)))
    ],))));
  }
}
