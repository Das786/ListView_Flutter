import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: "Flutter Demo",
       theme: ThemeData(
         primarySwatch: Colors.green,
       ),
       home: const MyHomePage(title: "Flutter ListView Demo"),
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('images/pixel.jpg'),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          );
        }),
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        reverse: true,
        itemExtent: 100,
        // scrollDirection: Axis.horizontal,
        children: const [
          Card(
            child: ListTile(title: Text("Item 1")),
          ),
          Card(
            child: ListTile(title: Text("Item 2")),
          ),
          Card(
            child: ListTile(title: Text("Item 3")),
          ),

        ],
      )

      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: const Text("ProductName"),
              subtitle: const Text("Price"),
            ),
          );
        },
      )
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key, required this.title }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _MyHomePageState extends State<MyHomePage>{

   List<String> images = [
    "images/pic0.jpg"
      "images/abcd.png"
     "images/camera.jpg"
      "images/iphone.jpg"
      "images/laptop.jpg"
      "images/pendrive.jpg"
      "images/pixel.jpg"
      'images/tablet.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (buildcontext, index){
          return Card(
            child: ListTile(
              title: const Text("ProductName"),
              subtitle: const Text("Price"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
        ),
    );
  }


}


