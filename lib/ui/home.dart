
import 'package:flutter/material.dart';
class ScaffoldExample extends StatelessWidget {

  _tapButton() {
    debugPrint("Tapped Button!");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade900,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("Email Tapped!")),
          IconButton(icon: Icon(Icons.alarm), onPressed: () => _tapButton)

        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint("Hello")),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("First")),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text("Second")),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), title: Text("Third"))
      ],
        onTap: (int index) => debugPrint("Tapped item : $index"),
      ),
      backgroundColor: Colors.redAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()

            // InkWell(
            //   child: Text("Tap!",
            //   style: TextStyle(fontSize: 23.4),),
            //
            //   onTap: () => debugPrint("tapped...."),

          ]

        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Hello!"),
          backgroundColor: Colors.amberAccent,);

        Scaffold.of(context).showSnackBar(snackBar);
        },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text("Button"),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,

      child: Center(
        child: Text(
          "Hello flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 23.4,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );

    // return Center(
    //   child: Text("Hello Flutter",
    //     textDirection: TextDirection.ltr,),
    // );
  }
}