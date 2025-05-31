import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/calculator_button.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(title: 'Flutter Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void btnOnClick(String btnVal){
    print(btnVal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Flutter Calculator'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0,1.0),
              child:Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '987',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    )
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text:'AC',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                   callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'C',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'<',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'/',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,

                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text:'9',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'8',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'7',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'X',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text:'6',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'5',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'4',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'-',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text:'3',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'2',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'1',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'+',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text:'+/-',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 22,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'0',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'00',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
                CalculatorButton(
                  text:'=',
                  fillColor: 0xFF8AC4D0,
                  textColor: 0xFF000000,
                  textSize: 20,
                  callback:btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
