import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:product_database/model/login_response/login_response.dart';
import 'package:product_database/profile_screen.dart';
import 'package:product_database/utils/apputils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  final SharedPreferences _prefs = AppUtils.prefs;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.blueGrey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  children: [headerSection(), textSection(), buttonSection()],
                ),
        ),
      ),
    );
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 30),
      // decoration: BoxDecoration(color: Colors.white),
      child: ElevatedButton(
          onPressed: () {
            bool isValid = formKey.currentState!.validate();

            if (isValid) {
              login();
            } else {}
          },
          child: const Text("Login", style: TextStyle(color: Colors.white))),
    );
  }

  // bool validateAndSave() {
  //   var globalfromkey;
  //   final form = globalfromkey.currentState;
  //   if (form.validate()) {
  //     form.save();
  //     return true;
  //   }
  //   return false;
  // }

  Widget textSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 30),
      // decoration: BoxDecoration(color: Colors.white),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            buildTextFormField("username", namecontroller),
            const SizedBox(height: 30),
            buildTextFormField("password", passwordcontroller)
          ],
        ),
      ),
    );
  }

  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  TextFormField buildTextFormField(
      String hint, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value != null && value.isNotEmpty) {
          return null;
        } else {
          return "Textfield can't be empty";
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(),
          labelText: hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.white),
    );
  }

  Container headerSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child:
          const Text("Product  Database", style: TextStyle(color: Colors.blue)),
    );
  }

  Future<void> login() async {
    if (namecontroller.text.isNotEmpty && passwordcontroller.text.isNotEmpty) {
      var response = await http.post(Uri.parse(
              "https://www.pearlcons.com/hrms/pearlchrmsapi/emp/loginhrms.php")
          .replace(queryParameters: {
        'username': namecontroller.text.trim(),
        'password': passwordcontroller.text.trim()
      }));

      //     ,
      // body: ({'username': 'manoj.rv', 'password': '123456789'}));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = jsonDecode(response.body);

        LoginResponse loginResponse = LoginResponse.fromJson(jsonData);

        if (loginResponse.error == "000") {
          final preference = await _prefs;

          preference.setString("id", loginResponse.data?.id ?? '');

          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Data Not Found")));
        }
      }
      if (response.statusCode == 001) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Data Not Found")));
      }
    }
  }
}
