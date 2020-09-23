import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS1F9FycIdrfZjw1aU4KzNh1CeCyaoNKCC0Gg&usqp=CAU"),
                radius: 25.0,
              )),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text("SL"),
                backgroundColor: Colors.purpleAccent,
              )),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              "https://hipertextual.com/files/2020/08/hipertextual-puedes-ver-primer-trailer-the-batman-4k-2020956533-scaled.jpg"),
          placeholder: AssetImage('assets/images/jar-loading.gif'),
        ),
      ),
    );
  }
}
