import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeWork(),
    );
  }
}

class Lesson9 extends StatefulWidget {
  const Lesson9({super.key});

  @override
  State<Lesson9> createState() => _Lesson9State();
}

class _Lesson9State extends State<Lesson9> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          counter++;
          print(counter);
        },
      ),
    );
  }
}

class Scrin2 extends StatefulWidget {
  const Scrin2({super.key});

  @override
  State<Scrin2> createState() => _Scrin2State();
}

class _Scrin2State extends State<Scrin2> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 20;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(fontSize: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          counter++;
          print(counter);
          setState(() {});
        },
      ),
    );
  }
}

class Scrin3 extends StatefulWidget {
  const Scrin3({super.key});

  @override
  State<Scrin3> createState() => _Scrin3State();
}

class _Scrin3State extends State<Scrin3> {
  late double width;
  late double height;
  late int color1;
  late int color2;
  late int color3;

  @override
  void initState() {
    // width = Random().nextInt(500).toDouble();
    // height = Random().nextInt(500).toDouble();

    // color1 = Random().nextInt(256);
    // color2 = Random().nextInt(256);
    // color3 = Random().nextInt(256);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: width,
          height: height,
          color: Color.fromRGBO(color1, color2, color3, 0.1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            // height = Random().nextInt(400).toDouble();
            // width = Random().nextInt(400).toDouble();

            // color1 = Random().nextInt(256);
            // color2 = Random().nextInt(256);
            // color3 = Random().nextInt(256);
          });
        },
      ),
    );
  }
}

// ===========================================================================================================

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isObsecured = true;
  bool isActive = false;

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller2,
                onChanged: (value) {
                  if (controller.text.isNotEmpty &&
                      controller2.text.isNotEmpty) {
                    isActive = true;
                  } else {
                    isActive = false;
                  }

                  setState(() {});
                },
              ),
              TextField(
                controller: controller,
                onChanged: (value) {
                  if (controller.text.isNotEmpty &&
                      controller2.text.isNotEmpty) {
                    isActive = true;
                  } else {
                    isActive = false;
                  }

                  setState(() {});
                },
                obscureText: isObsecured,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObsecured = !isObsecured;
                      setState(() {});
                    },
                    icon: Icon(
                      isObsecured ? Icons.visibility : Icons.visibility_off,
                      size: 40,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.blue[100],
                ),
              ),
              Container(
                height: 60,
                width: 250,
                color: isActive ? Colors.red : Colors.red.withOpacity(0.2),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Text('+'),
            onPressed: () {
              print(controller.text);
              print(controller2.text);
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Text('-'),
            onPressed: () {},
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  late double number1;
  late double number2;
  late double? sum = null;
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  add() {
    number1 = double.parse(num1.text);
    number2 = double.parse(num2.text);

    setState(() {
      sum = number1 + number2;
      num1.clear();
      num2.clear();
    });
  }

  sab() {
    number1 = double.parse(num1.text);
    number2 = double.parse(num2.text);
    setState(() {
      sum = number1 - number2;
      num1.clear();
      num2.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Калькулятор'),
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 140,
                color: Colors.green[100],
                child: Text('результат: ${sum == null ? 0 : sum}'),
              ),
              TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'введите первое число'),
                  controller: num1,
                  keyboardType: TextInputType.number),
              SizedBox(height: 50),
              TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'введите второе число'),
                  controller: num2,
                  keyboardType: TextInputType.number),
              ElevatedButton(
                onPressed: add,
                child: Text('+'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
              ElevatedButton(
                onPressed: sab,
                child: Text('-'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



