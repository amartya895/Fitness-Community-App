import 'package:flutter/material.dart';

class DiscoverTitle extends StatefulWidget {
  final String textTitle;
  final String image;

  const DiscoverTitle({super.key, required this.textTitle, required this.image});

  @override
  DiscoverTitleState createState() => DiscoverTitleState();

}

class DiscoverTitleState extends State<DiscoverTitle> {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            ),
            
          ),
        ),
        const SizedBox(width: 10.0),

        Text(
          widget.textTitle,
          style: const TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),          
        ),
      ],
    );
  }
}