import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text('Martes 11 de Junio 18:38', style: TextStyle(
                        fontSize: 21.0,
                      ),),
                    ),
                    SizedBox(
                      height: 21.0,
                    ),
                    Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Column(
                        children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.timer, size: 30.0,),
                              title: Text('Minutos jugados esta semana'),
                            ),
                            Center(
                              child: Text('273 min', style: TextStyle(
                                fontSize: 51.0,
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 51.0,
                    ),
                    RaisedButton(
                      child: Text('Estadísticas'),
                      onPressed: () {
                        print('Hola soy un botón');
                        Toast.show("Toast plugin app", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text("Sending Message"),
                        ));
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}