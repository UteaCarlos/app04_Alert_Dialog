import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.white,
          content: Text(
              "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.icons8.com/ios/344/apple-app-store--v2.png"),
              ),
              Title(
                color: Colors.black,
                child: Text("Blog post published"),
              ),
              Text("tihs blog post has been published . Team members"
                  "will be able to edit this post and republish changes"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Conforme"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://a.wattpad.com/useravatar/_rmlr_08.256.513168.jpg",
              ),
              Title(
                color: Colors.black,
                child: Text("YOUR VIDEO HAS BEEN UPLOADED"),
              ),
              Text(
                  "Upload videos in YouTube Studio. Sign in to YouTube Studio. In the top-right corner, click CREATE and then Upload videos ."),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("SKIP"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("NEXT"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Copy Link"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Untitle.com/total/promo"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Alert3"),
            )
          ],
        ),
      ),
    );
  }
}
