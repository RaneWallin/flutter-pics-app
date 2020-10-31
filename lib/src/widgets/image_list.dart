import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList({this.images});

  StatelessWidget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      }, // itemBuilder
    );
  }

  Widget buildImage(ImageModel imageModel) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(imageModel.url),
            padding: EdgeInsets.only(bottom: 10.0),
          ),
          Text(imageModel.title),
        ],
      ),
    );
  }
}
