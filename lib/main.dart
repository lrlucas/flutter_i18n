import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_i18n/app_localizations.dart';
import 'package:flutter_app_i18n/widgets/custom_appbar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app_language_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();
  runApp(MyApp(
    appLanguage: appLanguage,
  ));
}

class MyApp extends StatelessWidget {

  final AppLanguage appLanguage;

  MyApp({this.appLanguage});



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => appLanguage,
      child: Consumer<AppLanguage>(builder: (context, model, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          locale: model.appLocal,
          supportedLocales: [
            Locale('en', 'US'),
            Locale('es', 'BO')
          ],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            splashFactory: InkRipple.splashFactory
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        );
      })
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // language provider
    var appLanguage = Provider.of<AppLanguage>(context);
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.translate),
      //       onPressed: () {}
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.delete),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.map),
      //       onPressed: () {},
      //     )
      //   ],
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         AppLocalizations.of(context).translate('principal_title'),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           RaisedButton(
      //             child: Text("English"),
      //             onPressed: () {
      //               appLanguage.changeLanguage(Locale("en"));
      //             },
      //           ),
      //           RaisedButton(
      //             child: Text("Español"),
      //             onPressed: () {
      //               appLanguage.changeLanguage(Locale("es"));
      //             },
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: Center(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(Icons.directions),
                    title: Text("direccion 2"),
                    subtitle: Text("120 A Hither Green Lane  SE1 36QA"),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
