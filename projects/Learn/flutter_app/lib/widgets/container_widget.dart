import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

class ContainerWidget extends StatefulWidget {
  final dynamic title;

  final dynamic description;

  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: KTextStyle.titleTealText),
              Text(widget.description, style: KTextStyle.descTealText),
            ],
          ),
        ),
      ),
    );
  }
}
