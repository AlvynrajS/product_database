import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:product_database/dashboeard_screen.dart';
import 'package:product_database/model/login_response/profile_response/profile_response.dart';
import 'package:product_database/utils/apputils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  SharedPreferences prefs = AppUtils.prefs;

  ProfileResponse? profileResponse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProfileResponse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(child: const Text("Profile Screen")),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardScreeen()));
                  },
                  child: Icon(Icons.skip_next))
            ],
          ),
        ),
        body: profileResponse == null
            ? Center(child: CircularProgressIndicator())
            : buildBodyWidget());
  }

  Card buildBodyWidget() {
    return Card(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "User Id                      : ${prefs.getString("id")}  ",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Divider(indent: 15.0, endIndent: 15.0),
          Text(
            "First Name               : ${profileResponse?.data?.firstName}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Divider(indent: 15.0, endIndent: 15.0),
          Text(
            "Last Name                : ${profileResponse?.data?.lastName}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Divider(indent: 15.0, endIndent: 15.0),
          Text(
            "Email                          : ${profileResponse?.data?.email}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Divider(indent: 15.0, endIndent: 15.0),
          Text(
            "Phone Number          : ${profileResponse?.data?.contactNo}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const Divider(indent: 15.0, endIndent: 15.0),
          Text(
            "Gender                       : ${profileResponse?.data?.gender}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Future<ProfileResponse?> getProfileResponse() async {
    var response = await http.post(Uri.parse(
            "https://www.pearlcons.com/hrms/pearlchrmsapi/emp/profile.php")
        .replace(queryParameters: {'id': prefs.getString("id")}));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);

      profileResponse = ProfileResponse.fromJson(jsonData);

      if (profileResponse?.error == "000") {
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Data Not Found")));
      }
    }
    if (response.statusCode == 001) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Data Not Found")));
    }

    setState(() {});

    return profileResponse;
  }
}
