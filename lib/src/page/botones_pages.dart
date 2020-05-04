
import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:math';


class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottonNavigatorBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(01, 0.6),
          end: FractionalOffset(00, 1.0),
          colors: [
            Color.fromRGBO(52,54,101,1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 369.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),

      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        ),
      ],
    );


  }

  Widget _titulos(){
    //SafeArea se utiliza para envolver un container y respetar el Noch en cualquier direccion.
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment:
                CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10.0,),
                    Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0) )
                  ],
            ),
          ),
    );
  }

  Widget _bottonNavigatorBar(context){

    return  Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.near_me, size: 30.0,)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.remove_circle, size: 30.0,)
          ),
          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.pause_circle_filled, size: 30.0,)
          ),
          // BottomNavigationBarItem(
          //   title: Container(),
          //   icon: Icon(Icons.signal_wifi_off, size: 30.0,)
          // ),
          
        ]
      ),
    );
    
  }

  Widget _botonesRedondeados() {

    return Table(
      children: [
        //Los TableRow deben tener la misma cantidad de campos todos, sino no no funciona
        TableRow(
          //Es posible agregar elementos de cualquier tipo widget chart, etc
          children: [
            _crearBotonRedondeado( Colors.blue, Icons.dashboard, 'Dashboard'),
            _crearBotonRedondeado( Colors.green, Icons.map, 'Seguimiento'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.orange, Icons.near_me, 'Unidades'), 
            _crearBotonRedondeado( Colors.pink, Icons.local_gas_station, 'Combustible'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.cyanAccent, Icons.build, 'Mantenimiento'),
            _crearBotonRedondeado( Colors.blue, Icons.camera, 'Video'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.red, Icons.person, 'Conductor'),
            _crearBotonRedondeado( Colors.blue, Icons.border_all, 'Informes'),
          ]
        ),
        
      
      ],
    );
  }

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto){

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0,),
              ),
              Text(texto, style: TextStyle( color: color),),
              SizedBox(height: 5.0),
            ],
          ),

        ),
      )
    );

  }

}