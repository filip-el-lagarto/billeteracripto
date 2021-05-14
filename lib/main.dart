import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final MaterialColor blanco = MaterialColor(0xFFFFFFFF, color);
  final MaterialColor negro = MaterialColor(0xFF212121, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: blanco,
      ),
      home: MyHomePage(title: 'Crypto Billetera'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final Color morado_l = Color(0xFFEDEDF9);

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: morado_l,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF5F2968))),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Color(0xFF5F2968),
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_box_sharp,
                color: Color(0xFF5F2968),
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Center(
            child: Container(
          child: DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                '#',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF5F2968)),
              ),
            ),
            DataColumn(
              label: Text(
                'Moneda',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF5F2968)),
              ),
            ),
            DataColumn(
              label: Text(
                'Precio',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF5F2968)),
              ),
            ),
            DataColumn(
              label: Text(
                '24h %',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF5F2968)),
              ),
            ),
            DataColumn(
              label: Text(
                '7d %',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ], rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1')),
                DataCell(Text('Bitcoin BTC')),
                DataCell(Text('35,613,224.96')),
                DataCell(Text('-1.0%')),
                DataCell(Text('-10.26%')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2')),
                DataCell(Text('Bitcoin BTC')),
                DataCell(Text('35,613,224.96')),
                DataCell(Text('-1.0%')),
                DataCell(Text('-10.26%')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Bitcoin BTC')),
                DataCell(Text('35,613,224.96')),
                DataCell(Text('-1.0%')),
                DataCell(Text('-10.26%')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('4')),
                DataCell(Text('Bitcoin BTC')),
                DataCell(Text('35,613,224.96')),
                DataCell(Text('-1.0%')),
                DataCell(Text('-10.26%')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('5')),
                DataCell(Text('Bitcoin BTC')),
                DataCell(Text('35,613,224.96')),
                DataCell(Text('-1.0%')),
                DataCell(Text('-10.26%')),
              ],
            ),
          ]),
          alignment: Alignment.topCenter,
        )));
  }
}
