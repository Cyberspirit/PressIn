import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/dog.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var items = Get.put(TodoController());

  void _incrementCounter() {
    items.addItem(new Todo(
        author: "spirit",
        title:
            "future. If your default value can be const, adding const would be enough It can avoid confusion while passing value for the constructor which has many parameter. Dart/Flutter Constructor default value. For the constructors with either Named or Positional parameters, we can use = to define default values. The default values must be compile-time constants. If we don’t provide value, the default value is null.Flutter: Default assignment of List parameter in a constructor, Ever confused by that mysterious syntax in Dart constructors? Colons We can make an argument optional and provide a default value:  @required is a hint that some value should be passed as an argument to this parameter, even if it's just the default. This hint only makes sense when used with optional parameters, such as when you surround the parameters with braces, because otherwise arguments are mandatory anyways (like what you would be used to in e.g. java."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: items.itemCounts,
          itemBuilder: (BuildContext context, int index) {
            return new Column(
              children: <Widget>[
                new ListTile(
                  title: ReadMoreText(
                    items.items[index].title,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text("${items.items[index].author}"),
                      Text("${items.items[index].postedOn.toLocal()}")
                    ],
                  ),
                  isThreeLine: true,
                ),
                new Divider(
                  height: 2.0,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
