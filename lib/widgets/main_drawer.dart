import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  
  Widget buildListile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Deneme App!',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          buildListile('Home', Icons.home, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Asset Store', Icons.shop, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Videos', Icons.video_library, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Photos', Icons.image, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Recycle Bin', Icons.restore_from_trash, () {
            Navigator.of(context).pushNamed('/');
          }),
          Divider(),
          buildListile('Settings', Icons.settings, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Help', Icons.help, () {
            Navigator.of(context).pushNamed('/');
          }),
          buildListile('Feedback', Icons.feedback, () {
            Navigator.of(context).pushNamed('/');
          }),
          SizedBox(height: 125),
          buildListile('Subscribe to Pro Version', Icons.shop, () {
            Navigator.of(context).pushNamed('/');
          }),
        ],
      ),
    ));
  }
}
