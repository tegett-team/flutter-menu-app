import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  Drawer _getDrawer(BuildContext context) {
    var header = new DrawerHeader(
      child: new Text("Ajustes"),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/headerdrawer.jpeg'))),
    );

    var info = new AboutListTile(
      child: new Text("Información App"),
      applicationVersion: "v1.0.0",
      applicationName: "Demo drawer",
      applicationIcon: new Icon(Icons.favorite),
      icon: new Icon(Icons.info),
    );

    ListTile _getItem(IconData icon, String title, String route) {
      return new ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    ListView listView = new ListView(
      children: <Widget>[
        header,
        _getItem(Icons.settings, 'Configuración', "/configuracion"),
        _getItem(Icons.home, 'Página Principal', "/"),
        _getItem(Icons.battery_charging_full, "Batería", "/bateria"),
        info
      ],
    );

    return new Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("App Menu")), drawer: _getDrawer(context));
  }
}
