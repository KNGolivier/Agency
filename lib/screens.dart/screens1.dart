import 'package:flutter/material.dart';

class Screens1 extends StatelessWidget {
  const Screens1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: screenHeight * 0.60,
            child: Image.asset(
              'images1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.55,
          left: 0,
          right: 0,
          child: Container(
            height: screenHeight * 0.40,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
              ),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '01',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '.03',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Let\'s find your \ndream vacation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hotels, Resorts, Hostels & more get the \nbest prices on 2,000,000+ properties,\nworldwide',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
