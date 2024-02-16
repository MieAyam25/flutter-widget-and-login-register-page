import 'package:flutter/material.dart';
import 'selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Widgets Example',
            style: TextStyle(
              fontFamily: 'LouisGeorgeCafe',
              fontSize: 21,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Container Example',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'LouisGeorgeCafe',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Button Examples:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LouisGeorgeCafe',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20), // Adjust padding here
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Flatbutton',
                        style: TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Button',
                  style: TextStyle(
                    fontFamily: 'LouisGeorgeCafe',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: const TextStyle(fontSize: 18),
                  padding: const EdgeInsets.all(15) +
                      const EdgeInsets.only(left: 30, right: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, top: 25),
                child: Text(
                  'Local image example:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LouisGeorgeCafe',
                  ),
                ),
              ),
              Image.asset(
                'assets/images/image1.png',
                width: 600,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, top: 25),
                child: Text(
                  'Network image example:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LouisGeorgeCafe',
                  ),
                ),
              ),
              Image.network(
                'https://i.kym-cdn.com/photos/images/newsfeed/002/651/475/d40.jpg',
                width: 600,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7, top: 25),
                child: Text(
                  'Column Example:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LouisGeorgeCafe',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text('Item 1'),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text('Item 2'),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text('Item 3'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'Column and row: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'LouisGeorgeCafe',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildBox(),
                  _buildBox(),
                  _buildBox(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildBox(),
                  _buildBox(),
                  _buildBox(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildBox(),
                  _buildBox(),
                  _buildBox(),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'List View Example:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LouisGeorgeCafe',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 16),
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      5,
                      (index) => Container(
                        width: 150,
                        color: index.isEven ? Colors.green : Colors.blue,
                        child: Center(
                          child: Text(
                            'Item ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'LouisGeorgeCafe',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Grid View Example:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LouisGeorgeCafe',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 16),
                child: SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                      4,
                      (index) => Container(
                        color: index.isEven ? Colors.orange : Colors.purple,
                        child: Center(
                          child: Text(
                            'Grid ${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'LouisGeorgeCafe',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Builder(
                        builder: (context) => OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SelectionPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Login/Register',
                            style: TextStyle(
                              fontFamily: 'LouisGeorgeCafe',
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.red,
                            side: const BorderSide(color: Colors.red),
                            textStyle: const TextStyle(fontSize: 18),
                            padding: const EdgeInsets.all(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SizedBox(height: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBox() {
    return Container(
      width: 80,
      height: 80,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Box',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
