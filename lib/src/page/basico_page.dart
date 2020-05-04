import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
          
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
       ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );

  }

  _crearTitulo() {
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0 ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Lago con un Puente', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Lago en Alemania', style: estiloSubtitulo,)
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41', style: TextStyle(fontSize: 20.0)),
                ],
              ),
            ),
    );
  }

  _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me,'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto ){

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue,size: 40.0,),
        SizedBox(height: 5.0 ,),
        Text (texto, style: TextStyle(fontSize: 15.0, color: Colors.blue ),)
      ],
    );
  }

  Widget _crearTexto (){

    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal:40.0, vertical: 20.0),
        child: Text(
          'Irure deserunt culpa mollit in minim magna occaecat cillum nisi sunt anim ex. Non dolor mollit aliqua non quis officia dolore cupidatat Lorem mollit officia veniam quis excepteur. Ex sit id elit sint laboris quis fugiat. Labore ea ipsum aliquip pariatur. Enim et Lorem laborum pariatur sit excepteur ipsum ut elit deserunt consectetur.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}