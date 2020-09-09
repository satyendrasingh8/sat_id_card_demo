import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:SatCard(),
  ));
}
class SatCard extends StatefulWidget {
  @override
  _SatCardState createState() => _SatCardState();
}

class _SatCardState extends State<SatCard> {
  int codingLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('sat Id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            codingLevel++;
          });
        },
        child:Icon(
          Icons.add,
          color: Colors.grey[400],
        )
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(40, 10, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/satt.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[700],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),

            ),
            SizedBox(height: 10,),
            Text(
              'Satyendra',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text(
              'CURRENT CODING LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),

            ),
            SizedBox(height: 10,),
            Text(
              '$codingLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text('satyendrasinghsss7398@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                  letterSpacing: 1.0
                ),
                )
              ],
            )
          ],

        ),
      )
    );
  }
}
