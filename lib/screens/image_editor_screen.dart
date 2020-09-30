import 'dart:io';
import 'package:deneme_app/i_image_editor.dart';
import 'package:deneme_app/i_media_editor.dart';
import 'package:deneme_app/i_media_editor_provider.dart';
import 'package:deneme_app/image_editor.dart';
import 'package:deneme_app/screens/home_page.dart';
import 'package:deneme_app/widgets/adjust_screen.dart';
import 'package:deneme_app/widgets/brush_screen.dart';
import 'package:deneme_app/widgets/crop_screen.dart';
import 'package:deneme_app/widgets/effects_screen.dart';
import 'package:deneme_app/widgets/filters_screen.dart';
import 'package:deneme_app/widgets/photos_screen.dart';
import 'package:deneme_app/widgets/rotate_screen.dart';
import 'package:deneme_app/widgets/stickers_screen.dart';
import 'package:deneme_app/widgets/text_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageEditorScreen extends StatefulWidget implements IMediaEditorProvider {

  IImageEditor _imageEditor = new ImageEditor();

  @override
  _ImageEditorScreenState createState() => _ImageEditorScreenState();

  @override
  IMediaEditor getMediaEditor() {
    return _imageEditor;
  }

}

class _ImageEditorScreenState extends State<ImageEditorScreen> {

  
  File _image;

  Widget _buildMenuItem(
      Icon iconData, String menuItemTitle, Function onClicked) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          IconButton(
            icon: iconData,
            onPressed: onClicked,
          ),
          Text(
            menuItemTitle,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    pickImage();
    super.initState();
  }

  void pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
        
    return WillPopScope(
      onWillPop: () {
        Navigator.pushReplacement(
            context,
            new MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: isLandScape
                  ? (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.80
                  : (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.85,
              width: double.infinity,
              child: _image != null
                  ? Image.file(
                      FileImage(_image).file,
                      fit: BoxFit.cover,
                    )
                  : Center(child: Text('No image selected!')),
            ),
            SizedBox(
                height: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).padding.top) *
                    0.05),
            Expanded(
              child: Container(
                height: isLandScape
                    ? (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.15
                    : (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.10,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueGrey[900],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _buildMenuItem(
                            Icon(
                              Icons.filter,
                              color: Colors.white,
                            ),
                            'Filter', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return FiltersScreen();
                            },
                          );
                        }),
                        _buildMenuItem(
                            Icon(
                              Icons.photo_filter,
                              color: Colors.white,
                            ),
                            'Effects', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return EffectsScreen();
                            },
                          );
                        }),
                        _buildMenuItem(
                            Icon(
                              Icons.tag_faces,
                              color: Colors.white,
                            ),
                            'Stickers', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return StickersScreen();
                            },
                          );
                        }),
                        
                         _buildMenuItem(
                            Icon(
                              Icons.brush,
                              color: Colors.white,
                            ),
                            'Brush', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return BrushScreen();
                            },
                          );
                        }),


                     _buildMenuItem(
                            Icon(
                              Icons.text_fields,
                              color: Colors.white,
                            ),
                            'Text', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return TextScreen();
                            },
                          );
                        }),


                        _buildMenuItem(
                            Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                            'Photos', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return PhotosScreen();
                            },
                          );
                        }),

                        _buildMenuItem(
                            Icon(
                              Icons.adjust,
                              color: Colors.white,
                            ),
                            'Adjust', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return AdjustScreen();
                            },
                          );
                        }),

                        _buildMenuItem(
                            Icon(
                              Icons.rotate_right,
                              color: Colors.white,
                            ),
                            'Rotate', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return RotateScreen();
                            },
                          );
                        }),

                         _buildMenuItem(
                            Icon(
                              Icons.crop,
                              color: Colors.white,
                            ),
                            'Crop', () {
                          showModalBottomSheet(
                            barrierColor: Colors.black.withAlpha(1),
                            context: context,
                            builder: (_) {
                              return CropScreen();
                            },
                          );
                        }),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
