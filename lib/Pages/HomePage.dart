
import 'package:fp_prak_mobile/Models/list_model.dart';
import 'package:fp_prak_mobile/api_source.dart';
import 'DetailPage.dart';
import 'package:flutter/material.dart';
import 'Konversi.dart';
import 'SaranKesan.dart';
import 'Profile.dart';

class HeroListPage extends StatefulWidget {
  @override
  _HeroListPageState createState() => _HeroListPageState();
}

class _HeroListPageState extends State<HeroListPage> {
  int _currentIndex = 0;

  HeroList? heroList;

  @override
  void initState() {
    super.initState();
    fetchList();
  }

  Future<void> fetchList() async {
    try {
      var data = await ApiClient.getList();
      if (data != null) {
        setState(() {
          heroList = HeroList.fromJson(data);
        });
      } else {
        print('Error: Weather data is null');
      }
    } catch (e) {
      print('Error fetching weather data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MLBB Hero List'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView.builder(
            itemCount: heroList?.data?.length,
            itemBuilder: (context, index) {
              final hero = heroList?.data?[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailHero(idHero: '${hero?.heroid}')
                      )
                  );
                },
                child: Container(
                  height: 80,
                  child: Center(
                    child: ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          'https://${(hero?.key)?.substring(2)}',
                          width: 55,
                          height: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        '${hero?.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
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
          }
          if (index == 3) {
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
