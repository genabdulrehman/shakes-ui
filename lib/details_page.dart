import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsPage extends StatefulWidget {
  final String img;
  final String price;
  final String title;
  final String desc;
  const DetailsPage({
    Key? key,
    required this.img,
    required this.price,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
