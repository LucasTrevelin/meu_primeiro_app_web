import 'package:flutter/material.dart';
import 'package:meu_primeiro_app_web/contador_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com rotas',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/contador': (context) => MyStatefulWidget(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu Primeiro App Fluter para Web')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Olá Flutter!', style: TextStyle(fontSize: 24)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.blue,
                  child: Text(
                    'Container 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.red,
                  child: Text(
                    'Container 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Container com borda arredondada',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/contador',
                ); // Navega para a tela de Contador
              },
              child: Text('Ir para o contador'),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(leading: Icon(Icons.map), title: Text('Mapa')),
                  ListTile(leading: Icon(Icons.photo), title: Text('Fotos')),
                  ListTile(leading: Icon(Icons.phone), title: Text('Telefone')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
