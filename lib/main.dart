import 'dart:async';

import 'package:all_widgets_flutter/multiple_widget.dart';
import 'package:all_widgets_flutter/single_child_widget.dart';
import 'package:flutter/material.dart';

import 'model_class.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => MyApp(),
        '/columnandrow': (context) => columnandrow("columnandrow"),
      },
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'All_Flutter_Widget Demo',
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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final List<WidgetListDetails> _listWidgets = new List();

  void _addValuesToList() {
    if (_listWidgets.length == 0) {
      _listWidgets.add(new WidgetListDetails("Column and Row",
          "MultiChild : Column in Vertical & Row in horizontal"));

      _listWidgets.add(new WidgetListDetails("Grid view",
          "MultiChild : renders the view in grid format we can set the number of grid and "));

      _listWidgets.add(new WidgetListDetails(
          "Stack", "MultiChild : Will place widget one over the other"));

      _listWidgets.add(new WidgetListDetails(
          "ListView", "MultiChild : renders the custom listview containers"));

      _listWidgets.add(new WidgetListDetails("Align && Container",
          "SingleChild : Align the widgets by directions || graphical representation"));

      _listWidgets.add(new WidgetListDetails("SizedBox",
          "SingleChild : Used to give the width || height as matchparent and to give gap between 2 widgets"));
    }
  }

  void _navigateToTheRespectiveIndex(BuildContext context, int index) {
    switch (index) {
      case 0:
        {
          /* Navigator.pushNamed(context, '/columnandrow',
              arguments: "columnandrow");
*/
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => columnandrow("columnAndRow")));
        }
        break;

      case 1:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => gridviews()));
        }
        break;

      case 2:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => stackwidget()));
        }
        break;

      case 3:
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => custom_listview_widget()));
        }
        break;

      case 4:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => align_widget()));
        }
        break;
      case 5:
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => sized_box_widget()));
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _addValuesToList();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: _listWidgets.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_listWidgets[index].name),
                    subtitle: Text(_listWidgets[index].subtitle),
                    onTap: () {
                      debugPrint("Title: " +
                          _listWidgets[index].name +
                          " Subttile: " +
                          _listWidgets[index].subtitle +
                          " Index: $index");
                      _navigateToTheRespectiveIndex(context, index);
                    },
                  );
                },
              ),
            )
          ],
        ));
  }
}
