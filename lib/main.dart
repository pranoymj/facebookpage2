import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue), home: homescreen());
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                  bottom: 60,
                )),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey[800],
                  size: 30,
                ),
                Text(' '),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Sebastian Smith",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/share.png'),
                  radius: 15,
                  backgroundColor: Colors.white10,
                )
              ],
            ),
            Center(child: Image.asset('assets/images/bg.jpg')),
            ListTile(
                title: Text(
                  'Sebastian Smith',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Actor '),
                leading: CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage('assets/images/person.jpg')),
                trailing: Icon(Icons.thumb_up)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                      child: Text('Follow',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0))),
                ),
                Container(
                  height: 40.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Icon(Icons.messenger),
                ),
                Container(
                  height: 40.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('      '),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.circle_rounded,
                  color: Colors.grey,
                ),
                Text('Abin anto,Alia,Akshay and 2,307,773 others like this')
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text('Home')),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Posts',
                      style: TextStyle(color: Colors.grey),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text('About', style: TextStyle(color: Colors.grey))),
                TextButton(
                    onPressed: () {},
                    child:
                        Text('Videos', style: TextStyle(color: Colors.grey))),
                TextButton(
                    onPressed: () {},
                    child: Text('Photos', style: TextStyle(color: Colors.grey)))
              ],
            ),
            Divider(
              thickness: 9.0,
              color: Colors.grey[400],
            ),
            Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 20, top: 30)),
                Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                )),
                Icon(
                  Icons.info,
                  color: Colors.grey,
                ),
                Text('  New playground Same kid')
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                )),
                Icon(
                  Icons.access_alarm,
                  color: Colors.grey,
                ),
                TextButton(onPressed: () {}, child: Text('www.sebsmith.com'))
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                )),
                Icon(
                  Icons.folder_open_outlined,
                  color: Colors.grey,
                ),
                Text('  Actor')
              ],
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0, // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.mail),
                  title: new Text('Messages'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('Profile'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
