import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class align_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Align"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Align(
                alignment: Alignment.centerLeft, child: Text("CengtreLeft")),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow
            ),
            margin: EdgeInsets.all(25.0),
            padding: EdgeInsets.all(10.0),
            child: Align(alignment: Alignment(-0.1,2),child: Text("Can set widgets based on the graphical representation"),),
          )
        ],
      ),
    );
  }
}

class sized_box_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: 100,
        child: Text("SizedBox",style: TextStyle(color: Colors.blueGrey)),
      ),
    );
  }

}
