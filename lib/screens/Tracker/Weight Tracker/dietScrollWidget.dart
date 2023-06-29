import 'package:flutter/material.dart';

Widget dietScrollSection(String title, IconData icon) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
    child: Material(
      elevation: 3,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: SizedBox(
        height: 70,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
            Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            )
          ],
        ),
      ),
    ),
  );
}
