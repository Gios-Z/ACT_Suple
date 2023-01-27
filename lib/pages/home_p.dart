import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/img.dart';
import 'package:flutter_application_1/pages/image_p.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeria"),
        backgroundColor: Color.fromARGB(255, 8, 87, 189),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        // ignore: prefer_const_literals_to_create_immutables
        children: lista,
      ),
    );
  }

  List<Widget> get lista {
    List<Widget> imglist = [];

    for (var image in images) {
      imglist.add(GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ImagePage(url: image)));
        },
        child: Hero(
          tag: image,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ));
    }

    return imglist;
  }
}
