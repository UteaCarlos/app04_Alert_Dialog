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
          title: Text("BLOG POST PUBLISHED "),
          backgroundColor: Colors.white,
          content: Text(
              "Publish a post · ​Sign in to Blogger. · Under the name of a blog, click Posts Posts and then · On the right sidebar, next to Published on Published on  "),
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
          title: Text("YOUR VIDEO HES BEEN UPLOADED"),
          backgroundColor: Colors.white,
          content: Text(
              "your video within 48 hours and let you know whether it has been authorized"),
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
              child: Text("Alert2"),
            )
          ],
        ),
      ),
    );
  }
}
