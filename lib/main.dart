import 'package:flutter/material.dart';

void main() => runApp(GridViewExample());

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    const String APP_TITLE = 'Flutter Grid View Example';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_TITLE,
      home: HomeRoute(),
    ); // MaterialApp()
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                color: Colors.yellow,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ), // SliverGridDelegateWithFixedCrossAxisCount()
                  children: <Widget>[
                    Center(child: Text('A')),
                    Center(child: Text('B')),
                    Center(child: Text('C')),
                    Center(child: Text('D')),
                    Center(child: Text('E')),
                    Center(child: Text('F')),
                    Center(child: Text('G')),
                    Center(child: Text('H')),
                    Center(child: Text('I')),
                  ], // List<Widget>[]
                ), // GridView()
              ), // Container()
              Container(
                height: 250.0,
                color: Colors.orangeAccent,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ), // SliverGridDelegateWithFixedCrossAxisCount()
                  itemCount: 16,
                  itemBuilder: (context, idx) {
                    return Center(child: Text('${idx + 1}'));
                  },
                ), // GridView.builder
              ), // Container()
            ], // List<Widget>[]
          ), // Column()
        ), // SingleChildScrollView()
      ), // SafeArea()
    ); // Scaffold()
  }
}
