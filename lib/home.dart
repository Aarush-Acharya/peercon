// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<MenuData> menu = [
    MenuData(
      icon: Icons.connect_without_contact,
      title: "BROWSER",
    ),
    MenuData(
      icon: Icons.wifi_tethering_rounded,
      title: "ADVERTISER",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          // textDirection: TextDirection.rtl,
          children: [
            IconButton(
                icon: new Icon(Icons.home),
                color: Colors.white,
                onPressed: () => {}),
            SizedBox(width: 60),
            Text("Peercon",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: Column(  
        children: [
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: menu.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.25,
                crossAxisCount: 1,
                crossAxisSpacing: 0.5,
                mainAxisSpacing: 1.0),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.all(10.0),
                //color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.cyan),
                ),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, menu[index].title.toLowerCase()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        menu[index].icon,
                        size: 40,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 30),
                      Text(
                        menu[index].title == "BROWSER"
                            ? "BROWSER"
                            : "ADVERTISER",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuData {
  late IconData icon;
  late String title;
  MenuData({
    required this.icon,
    required this.title,
  });
}
//
