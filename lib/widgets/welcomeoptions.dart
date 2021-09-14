import 'package:flutter/material.dart';

class WelcomeOptions extends StatelessWidget {
  const WelcomeOptions({
    Key? key,
    required this.width,
    required this.height,
    required this.iamge,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final double width;
  final double height;
  final Image iamge;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          iamge,
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Color(0xff605DED),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
