import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: My_Id(),
    ));

class My_Id extends StatelessWidget {
  const My_Id({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID CARD"),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpeg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.purple,
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "TINU BOSE",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "QUALIFICATION",
              style: TextStyle(color: Colors.black, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "MCA",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "ttinubose@gmail.com",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "8921584423",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
