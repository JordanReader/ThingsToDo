import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Things to do',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Things to do',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(75, 82, 82, 82),
        // gradient: LinearGradient(begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Colors.white,
        //         Colors.grey[300],
        //       ],)
        ),
        child: new Column(
          children: [new Container(
          
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 15.0,
          width: 400.0,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green[300],
                Colors.green[400],
              ],
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10.0,
              offset: Offset(0.0, 0.0),
              
            ),
          ],
          ),
          padding: const EdgeInsets.all(8.0),
            child: Text(
              'Motivational Quote Here:',
              style: Theme.of(context)
        .textTheme
        .headline4
        .copyWith(color: Colors.white))
        
            ),
            new Column(
          children: [new Container(
          
          height: Theme.of(context).textTheme.headline4.fontSize * 1.0 + 0.2,
          width: 300.0,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueGrey[400],
                Colors.blueGrey[500],
              ],
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10.0,
              offset: Offset(0.0, 0.0),
              
            ),
          ],
          ),
          padding: const EdgeInsets.all(8.0),
            child: Text(
              '"Whoever said the motivational quote."',
              style:TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
        
            ),
          ),

            new Column(
              children: <Widget>[_Tasks()],
            ),
          
          ]
        ),
          ]

      ),  
    ),  
   );  
  }
}



class _Tasks extends StatefulWidget {
  @override
  __TasksState createState() => __TasksState();
}

class __TasksState extends State<_Tasks>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70
      ),
    
      child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        
       
        Divider(),
        Text("Task one", style: TextStyle(fontSize:19.0, fontWeight: FontWeight.bold),),
        Divider(),
        Divider(),
        Text("Task two", style: TextStyle(fontSize:19.0, fontWeight: FontWeight.bold),),
        Divider(),
        Divider(),
        Text("Task three", style: TextStyle(fontSize:19.0, fontWeight: FontWeight.bold),),
        Divider(),
      ],
      ),
  
    );
  }
}

