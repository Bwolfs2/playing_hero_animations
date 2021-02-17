import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/4654514?s=460&u=eb927206d1e73ccc297f0a7911f4c8892bc3900f&v=4'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Hi, Bwolf =D",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.notifications_none,
            color: Colors.grey[800],
          ),
        )
      ],
    );
  }
}
