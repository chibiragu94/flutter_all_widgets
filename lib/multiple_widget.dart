import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class columnandrow extends StatelessWidget {
  String title;

  columnandrow(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            //is like the weight
            flex: 1,
            child: (Text(
              "One",
            )),

          ),
          Expanded(
            flex: 2,
            child:
                (Text("Two", style: TextStyle(backgroundColor: Colors.green))),
          ),
          Expanded(
            flex: 1,
            child: (Text(
              "Three",
              style: TextStyle(backgroundColor: Colors.red),
            )),
          ),
        ],
      ),
    );
  }
}

class gridviews extends StatelessWidget {
  /*Here we can set the number of grids each grid is like the container(is single child widget)*/
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
        ),
        body: GridView.count(
          primary: true,
          scrollDirection: Axis.horizontal,
          //we can change the axis of scrolling's
          reverse: true,
          //scroll to last position
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          // right spacing
          mainAxisSpacing: 10,
          //bottom spacing
          crossAxisCount: 2,
          // number of grids
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('He\'d have you all unravel at the',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              color: Colors.red[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Heed not the rabble'),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Sound of screams but the'),
              color: Colors.blue[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Who scream'),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution is coming...'),
              color: Colors.yellow[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.teal[600],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.blue[600],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Revolution, they...'),
              color: Colors.orange[600],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child:  /*Text('Revolution, they...')*/Image.asset('assets/images/assured_pin.png'),
              //color: Colors.teal[600],
            ),
          ],
        ));
  }
}

class stackwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),
        body: Center(
          child: (Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              Container(
                //will contain only one child
                width: 200,
                height: 200,
                alignment: Alignment(0.0, 0.0),
                //it is completly based on x and y axis in graph
                child: (Text(
                  "Testing of the background",
                  style: TextStyle(color: Colors.black,fontFamily: 'Lemon',fontSize: 70.0),
                )),
              )
            ],
          )),
        ));
  }
}

//Check this tutorial for all customisation using the listview
//https://pusher.com/tutorials/flutter-listviews

class custom_listview_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViews"),
      ),
      body: innerlistclass(),
    );
  }
}

class innerlistclass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return test();
  }
}

class test extends State<StatefulWidget> {
  List _list_data = new List();
  int _counter = 0;

  void _addvalues() {
    if(_list_data.length == 0){
      _list_data.add("oo");
      _list_data.add("oo");
      _list_data.add("oo");
      _list_data.add("oo");
      _list_data.add("oo");
      _list_data.add("oo");
    }
  }

  @override
  Widget build(BuildContext context) {
    _addvalues();

    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Add values"),
          onPressed: () {
            _counter++;
            setState(() { // call setstate while adding the values to the listview's data
              _list_data.add("value : $_counter");
            });

          },
        ),
        Expanded(
          child: (ListView.separated(
            padding: EdgeInsets.all(20),
            itemCount: _list_data.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  SizedBox(height: 10), //it is used for giving the space
                  Text("Title $index"),
                  Text(_list_data[index]),
                  Icon(Icons.security)
                ],
              );
            },
            separatorBuilder: (context, index) {// this will create the sperate line between the views
              return Divider();
            },
          )),
        )
      ],
    );
  }
}
