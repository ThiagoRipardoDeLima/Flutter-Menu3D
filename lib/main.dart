import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    bool flip = false;
    AppBar appBar = flip
        ? AppBar()
        : AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => null //CustomDrawer.of(context).open(),  
                );
              }
            ),
            title: Text("Menu Personalizado"),
        );
    
    Widget child = MyHomePage(appBar: appBar);

    return MaterialApp(
      title: 'Flutter Top',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: child,
    );
  }
}

class MyHomePage extends StatefulWidget{
  final AppBar appBar;

  MyHomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _count = 0;

  void _incrementCounter(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: widget.appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Quantidade de toque no botão adicionar "),
            Text("$_count", style: Theme.of(context).textTheme.display1,),
          ],    
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Adicionar",
        child: Icon(Icons.add)
      ),
    );
  }

}