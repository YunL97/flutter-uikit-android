import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Method Channel Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const MethodChannel _channel =
  const MethodChannel('com.example.methodchanneltest');

  String _platformVersion = 'Unknown';

  Future<Object> getPlatformVersion() async {
    final Object version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Method Channel Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("Get Platform Version"),
              onPressed: () async {
                var result = await getPlatformVersion();
                setState(() {
                  _platformVersion = result.toString();
                });
              },
            ),
            Text(_platformVersion),
          ],
        ),
      ),
    );
  }
}
