import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(
                      top: 100,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          blurRadius: 10,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/icon.png",
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontFamily: "Spoof-regular",
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    "Profession",
                    style: TextStyle(
                      fontFamily: "Spoof-regular",
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(

                  left: 24,
                  right: 24,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "My profile",
                      style: TextStyle(
                        fontFamily: "Spoof-regular",
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 26,),
                    listProfile(Icons.person, "Full Name", "Your Name"),
                    listProfile(Icons.date_range, "Date of Birth", "Month XX, XXXX"),
                    listProfile(Icons.location_pin, "Location", "Adress"),
                    listProfile(Icons.male, "Gender", "Male/Female"),
                    listProfile(Icons.phone, "Phone Number", "111 111 111"),

                  SizedBox(width: 200,
                    child: TextButton(onPressed: (){
                    //code
                  },
                      child: Text('Settings', style: TextStyle(color: Colors.blue, fontSize: 23,),),
                  ),
                  ),
                    SizedBox(width: 200,
                      child: TextButton(onPressed: (){
                        //code
                      },
                        child: Text('Log out', style: TextStyle(color: Colors.red, fontSize: 23,),),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 10),
        child: GNav(
          tabBackgroundColor: Colors.grey[300]!,
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(icon:
            Ionicons.home_outline,
            text: 'Home',
            ),
            GButton(icon:
            Ionicons.calendar_outline,
            text: 'Sheadule',
            ),
            GButton(icon:
            Ionicons.list_outline,
            text: 'Todos',
            ),
            GButton(icon:
            Ionicons.person_outline,
            text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget listProfile(IconData icon, String text1, String text2) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          const SizedBox(width: 24,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Spoof-regular",
                  fontSize: 14,
                ),
              ),
              Text(
                text2,
                style: const TextStyle(
                  color: Colors.black87,
                  fontFamily: "Spoof-regular",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}