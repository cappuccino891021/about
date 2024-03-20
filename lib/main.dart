import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cappuccino',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.pink[60],
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );//consttitle: 'About My Doll'
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({super.key, required this.title});
  //final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          ' Cappuccino\'s Bakery !',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color:Colors.grey[800]
          ), // 设置字体大小为24.0
        ),
      ),
      body:  SingleChildScrollView(
      child:Column(
        //padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        //padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
          children: <Widget>[
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                SizedBox(width: 50.0),
                Center(
                  child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('assets/cappuccino.jpg')
                  ),
                ),

                SizedBox(width: 35.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 25.0),
                    NameSection(),
                    DrinksSection(),
                    CakeSection(),
                    JobSection(),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey[500],
              height: 40.0,
            ),

            TostoSection(),
            SandwishSection(),
            //CakesSection(),
          ]
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'LIKE!',
        child: const Icon(Icons.favorite),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 50.0,
        backgroundImage: AssetImage('assets/cappuccino.jpg')
      ),
    );
  }
}
class NameSection extends StatelessWidget {
  const NameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'NAME',
          style: TextStyle(
            color: Colors.purple[200],
    fontSize: 10.0,
    letterSpacing: 2.0,
    ),
    //textAlign: TextAlign.left,
    ),
        SizedBox(height: 3.0),
        Text(
          '   Cappuccino',
          style: TextStyle(
            color: Colors.pink[150],
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
class DrinksSection extends StatelessWidget {
  const DrinksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'DRINKS',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 10.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          '   Coffee!',
          style: TextStyle(
            color: Colors.pink[150],
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}

class JobSection extends StatelessWidget {
  const JobSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'JOB',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 10.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          '   Baker!',
          style: TextStyle(
            color: Colors.pink[150],
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}

class CakeSection extends StatelessWidget {
  const CakeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'CAKE',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 10.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 3.0),
        Text(
          '   Strawberry cake!',
          style: TextStyle(
            color: Colors.pink[150],
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
class TostoSection extends StatelessWidget {
  const TostoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'TOAST',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 20.0,
            letterSpacing: 2.0,
          ),
          //textAlign: TextAlign.left,
        ),
        SizedBox(height: 3.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Image.asset('assets/bread (1).png', // 替换为您的图像路径
                width: 200, // 调整图像的宽度
                height: 200, // 调整图像的高度
                ),Image.asset('assets/bread (2).png', // 替换为您的图像路径
                width: 200, // 调整图像的宽度
                height: 200, // 调整图像的高度
              ),Image.asset('assets/bread (3).png', // 替换为您的图像路径
                width: 200, // 调整图像的宽度
                height: 200, // 调整图像的高度
              ),
            ]
          ),
        )
      ],
    );
  }
}
class SandwishSection extends StatelessWidget {
  const SandwishSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'SANDWISH',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 20.0,
            letterSpacing: 2.0,
          ),
          //textAlign: TextAlign.left,
        ),
        SizedBox(height: 3.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: <Widget>[
                Image.asset('assets/sandwich (1).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),Image.asset('assets/sandwich (2).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),Image.asset('assets/sandwich (3).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),
              ]
          ),
        )
      ],
    );
  }
}
class CakesSection extends StatelessWidget {
  const CakesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'BREAD',
          style: TextStyle(
            color: Colors.purple[200],
            fontSize: 20.0,
            letterSpacing: 2.0,
          ),
          //textAlign: TextAlign.left,
        ),
        SizedBox(height: 3.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: <Widget>[
                Image.asset('assets/c (1).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),Image.asset('assets/c (2).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),Image.asset('assets/c (3).png', // 替换为您的图像路径
                  width: 200, // 调整图像的宽度
                  height: 200, // 调整图像的高度
                ),
              ]
          ),
        )
      ],
    );
  }
}