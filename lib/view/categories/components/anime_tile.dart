// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class AnimeTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String rate;
  final String image;
  const AnimeTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.rate,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: kSecondaryColor),
              top: BorderSide(color: kSecondaryColor),
              right: BorderSide(color: kSecondaryColor)),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            image: AssetImage(image),
            height: 150,
            width: 150,
            // fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                subTitle.substring(0, 25),
                style: TextStyle(fontSize: 14, color: kTextColor),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 230, 230, 109),
                    size: 20,
                  ),
                  SizedBox(width: 3),
                  Text(
                    rate,
                    style: const TextStyle(
                        color: kTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
