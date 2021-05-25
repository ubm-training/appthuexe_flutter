import 'package:flutter/material.dart';
import 'webview.dart';

void main() => runApp(MyAppThueXe());

class MyAppThueXe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 30.0),
                    child: new Text(
                      "THÔNG TIN CÔNG TY",
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  ),
                  new Text(
                    "App Thuê Xe hoạt động trên nền tảng ứng dụng cho thuê xe tự lái 4-7 chỗ, theo mô hình kinh tế chia sẻ.",
                    style: new TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16.0
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor = Color(0xFF00a54f);
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.all(10.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );

    }
    Widget bottomTextSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Text(
        '''Cần hỗ trợ nhanh, vui lòng gọi Công An 113 (9:00 AM - 6:00 PM T2 - T7) hoặc gửi tin nhắn vào fanpage của App Thuê Xe.''',
        style: new TextStyle(
            color: Colors.grey[450],
            fontSize: 14.0
        ),
      ),
    );
    Widget twoButtonsSection1 = new InkWell(
      child: new Container(
        padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildButton(Icons.home, "Trang chủ"),
            buildButton(Icons.share, "Mạng xã hội"),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoWebView()),
        );
      },
    );
    Widget twoButtonsSection2 = new InkWell(
      child: new Container(
        padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildButton(Icons.support, "Hướng dẫn"),
            buildButton(Icons.contact_phone, "Liên hệ"),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoWebView()),
        );
      },
    );
    return MaterialApp(
      title: "APP THUÊ XE",
      theme: ThemeData(
        primaryColor: Color(0xFF00a54f),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
              color: Colors.white
          )
        )
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("APP THUÊ XE"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/ubm_appthuexe.jpg',
              fit: BoxFit.cover,
            ),
            titleSection,
            twoButtonsSection1,
            twoButtonsSection2,
            bottomTextSection
          ],
        ),
      ),
    );
  }
}