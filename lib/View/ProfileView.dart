import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpg"),
                  radius: 70
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("John Doe", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500
                      )),
                      Text("Teacher", style: TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 14
                      ),),
                      Text("Kathmandu, Nepal", style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 14
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    "About Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Details aboput me is here. I am looking for a partner fot hiking artoerunf"
                    "Honkong \n\nHobbies: Travel, Music, Explore new culture \n\nLanguages: English, Spanish, Hindi, "
                    "French")
              ],
            ),
          )
        ],
      ),
    );
  }
}