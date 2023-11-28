import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';
import 'Konversi.dart';
import 'LoginPage.dart';
import 'SaranKesan.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3;

  Future<void> _logout() async {
    // Clear the username from shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    await prefs.remove('login');

    // Navigate to the login page and remove the previous routes from the stack
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 600,
            width: 350,
            child: Card(
              color: Colors.blue[300],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: ClipOval(
                      child: Image.network(
                        'https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-19/353802709_1025805695251506_5837021031481580435_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=e5OiuokMdpsAX9nxI0j&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDLwj34GwbmCg6Jg9RbtDp6T0W9psoZPO0rKxML8C1juQ&oe=6567A2E3&_nc_sid=8b3546',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  IconButton(
                    onPressed: () {
                      launcher('https://www.instagram.com/a.aryanadira/');
                    },
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/2048px-Instagram_logo_2022.svg.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Nadira Nur Wiradatya',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '124210068',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pacitan, 6 April 2003',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: ClipOval(
                      child: Image.asset('assets/images/bbz.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  IconButton(
                    onPressed: () {
                      launcher('https://www.instagram.com/bebesett_/');
                    },
                    icon: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/2048px-Instagram_logo_2022.svg.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Bryan Bisma Zefanya',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '124210039',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Jakarta, 17 Juni 2002',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HeroListPage()),
            );
          }
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Converter()),
            );
          }
          if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FeedbackForm()),
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Beranda',
              backgroundColor: Colors.blue[900]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.autorenew_rounded),
              label: 'Konversi',
              backgroundColor: Colors.blue[900]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.feed_outlined),
              label: 'Feedback',
              backgroundColor: Colors.blue[900]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
              backgroundColor: Colors.blue[900]
          ),
        ],
      ),
    );
  }

  Future<void> launcher(String url) async {
    final Uri _url = Uri.parse(url.startsWith('http') ? url : 'https://$url');
    if (!await launchUrl(_url)) {
      throw Exception("Failed to launch URL: $_url");
    }
  }
}
