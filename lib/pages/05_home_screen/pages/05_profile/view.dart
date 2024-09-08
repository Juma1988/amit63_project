import 'package:app/core/design/image.dart';
import 'package:flutter/material.dart';

part '_about.dart';
part '_general.dart';
part '_other.dart';
part '_profile_section.dart';
part '_statics.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xFFD6E4FF),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFD6E4FF)),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFFFFFFF),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                  height: 210,
                  width: double.infinity,
                  child: _ProfileSection()),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    _Static(),
                    SizedBox(height: 24),
                    About(),
                    SizedBox(height: 24),
                    General(),
                    SizedBox(height: 24),
                    Others(),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
