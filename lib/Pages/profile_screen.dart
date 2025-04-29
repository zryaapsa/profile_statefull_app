import 'package:flutter/material.dart';
import 'package:profile_statefull_app/Pages/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool temaGelap = true;
  //* fungsi ganti tema
  void gantiTema() {
    setState(() {
      temaGelap = !temaGelap;
    });
  }

  void logout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // * mengatur warna tema
    final backgroundColor = temaGelap ? Color(0xFF222831) : Colors.white;
    final primaryColor = temaGelap ? Color(0xFF393E46) : Colors.grey.shade200;
    final textColor = temaGelap ? Color(0xFFDFD0B8) : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('pandu', style: TextStyle(color: textColor)),
            Icon(Icons.arrow_drop_down, color: textColor),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [Icon(Icons.menu, color: textColor)],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          //* Profile photo
          Profile_Photo(),
          //* Username Profile
          Profile_Username(textColor),
          //* Informasi User
          Informasi_User(textColor),
          SizedBox(height: 15),
          //* Button Edit Profile
          Profile_Edit(primaryColor, textColor),
          SizedBox(height: 15),
          //* Informasi BIO
          Profile_Bio(primaryColor, textColor),
          //* Kategories
          Kategories(textColor),

          //* Button Ganti Tema dan Logout
          Button_Tema_Logout(primaryColor, textColor),
        ],
      ),
    );
  }

  Padding Button_Tema_Logout(Color primaryColor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: gantiTema,
            style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
            child: Text('Ganti Tema', style: TextStyle(color: textColor)),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: logout,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Padding Kategories(Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.menu, color: textColor),
          Icon(Icons.lock, color: textColor),
          Icon(Icons.alternate_email, color: textColor),
          Icon(Icons.bookmark, color: textColor),
          Icon(Icons.favorite, color: textColor),
        ],
      ),
    );
  }

  Column Profile_Bio(Color primaryColor, Color textColor) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add, color: textColor),
              Text('Add Bio', style: TextStyle(color: textColor, fontSize: 15)),
            ],
          ),
        ),
      ],
    );
  }

  Row Profile_Edit(Color primaryColor, Color textColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Edit Profile
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Edit Profile',
            style: TextStyle(color: textColor, fontSize: 15),
          ),
        ),
        // Share Profile
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Share Profile',
              style: TextStyle(color: textColor, fontSize: 15),
            ),
          ),
        ),
        // Add Friend
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(Icons.person_add, color: textColor),
        ),
      ],
    );
  }

  Row Informasi_User(Color textColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Likes',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding Profile_Username(Color textColor) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        '@userpandu',
        style: TextStyle(color: textColor, fontSize: 24),
      ),
    );
  }

  Stack Profile_Photo() {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          child: Center(
            child: Icon(Icons.person, color: Colors.white, size: 80),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.cyan,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Icon(Icons.add, size: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
