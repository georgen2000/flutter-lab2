import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Expanded(
          flex: 10,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: RoundImage(
                          href:
                          'http://zoosalon.org.ua/wp-content/uploads/2018/04/smile-300x300.png',
                          size: 80.0,
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Євген'),
                              Text('Переглянути профіль')
                            ],
                          ))
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.announcement_rounded),
                title: Text('Про нас'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Налаштування'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.auto_stories),
                title: Text('Технічна підтримка'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Розроблено Розробником'),
                Text('Мною'),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class RoundImage extends StatelessWidget {
  final double size;
  final String href;

  RoundImage({this.size, this.href});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Image.network(
        href,
        height: size,
        width: size,
      ),
    );
  }
}
