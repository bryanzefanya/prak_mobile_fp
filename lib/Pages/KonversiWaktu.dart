import 'package:fp_prak_mobile/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Konversi.dart';
import 'Profile.dart';
import 'SaranKesan.dart';

class TimeConverter extends StatefulWidget {
  @override
  _TimeConverterState createState() => _TimeConverterState();
}

class _TimeConverterState extends State<TimeConverter> {
  int _currentIndex = 1;

  DateTime _selectedTime = DateTime.now();

  String _formatTime(DateTime time, String timeZone) {
    return DateFormat('HH:mm:ss', 'en_US')
        .add_jm()
        .format(time.toUtc())
        .toString() +
        ' $timeZone';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Converter'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 400,
            width: 370,
            child: Card(
              color: Colors.blue[600],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Waktu yang dipilih:',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    _formatTime(_selectedTime, 'UTC'),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTime =
                                _selectedTime.toUtc().add(Duration(hours: 7));
                          });
                        },
                        child: Text('WIB'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTime =
                                _selectedTime.toUtc().add(Duration(hours: 8));
                          });
                        },
                        child: Text('WITA'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!)
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedTime =
                                _selectedTime.toUtc().add(Duration(hours: 9));
                          });
                        },
                        child: Text('WIT'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedTime = DateTime.now();
                      });
                    },
                    child: Text('Refresh \nTime', textAlign: TextAlign.center),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[400]!)
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Waktu London:',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    _formatTime(_selectedTime, 'GMT'),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
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
          } if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Converter()),
            );
          } if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FeedbackForm()),
            );
          } if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
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
}