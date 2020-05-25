import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutMe!'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/geet1.jpg'),
                radius: 100.0,
              ),
            ),
            Text(
              'Purushothaman',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white),
            ),
            Text(
              'A noob flutter dev!',
              style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 20.0,
                  color: Colors.teal[100]),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              color: Color(0xFF1D1E33),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 8825718924',
                    ),
                  )),
            ),
            Card(
              color: Color(0xFF1D1E33),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text('pksharma66558@gmail.com'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
