import 'package:flutter/material.dart';

import 'direcciones_page.dart';
import 'mapas_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _callpage(currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: _scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

  Future _scanQR() async {
    // https://fernando-herrera.com
    // geo:40.724233047051705,-74.00731459101564
    String futureString = '';
    // try {
    //   futureString = await new QRCodeReader().scan();
    // } catch (e) {
    //   futureString = e.toString();
    // }
    // print('futureString: $futureString');

    // if (futureString != null) {
    //   print('Tenemos informacion');
    // }
  }

  Widget _callpage(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();
    }
  }

  Widget _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones'),
        ),
      ],
    );
  }
}
