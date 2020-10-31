// import flutter helper
import "package:flutter/material.dart";
import "package:http/http.dart" show get, Response;
import "dart:convert";

import "models/image_model.dart";
import "widgets/image_list.dart";

class App extends StatefulWidget {
  State<StatefulWidget> createState() {
    return new AppState();
  } // createState
} // App

// Create a custom widget with state
class AppState extends State<App> {
  /// Tracks the id of the next image to get
  int counter = 1;

  /// Holds images to display to the screen
  List<ImageModel> images = [];

  /// Makes API call to get image data and parses data.
  void fetchImage() async {
    final String apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    final Response response = await get('$apiUrl/$counter');

    /// Create an [ImageModel] with [response] and add it to [images].
    setState(
      () {
        images.add(new ImageModel.fromJson(json.decode(response.body)));
        counter++;
      },
    );
  }

  // This must define a build method that returns
  // the widgets that this widget will show
  Widget build(BuildContext context) {
    return MaterialApp(
      // [home] is the first thing to show up on screen
      // This uses the [Scaffold] widget from the
      // material package
      home: Scaffold(
        body: ImageList(images: images),
        appBar: AppBar(
          title: Text("Fetch an image"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  } // build
} // AppState
