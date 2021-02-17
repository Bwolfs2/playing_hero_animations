import 'package:flutter/material.dart';

class DetailHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: BackButton(
            color: Colors.grey[850],
          ),
          backgroundColor: Colors.white,
        ),
        Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.drag_indicator_sharp,

            /// this is the Client Logo =/
            color: Colors.grey[800],
          ),
        )
      ],
    );
  }
}
