import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/home_image_editor_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Deneme App',
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                //Navigate to the settings screen
              },
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Container(
                height: 100,
                width: 180,
                child: HomeImageEditorCard('Video Edit', Colors.purple),
              ),
              Container(
                height: 100,
                width: 180,
                child: HomeImageEditorCard('Image Edit', Colors.purple),
              ),
            ],
          ),
        ));
  }
}
