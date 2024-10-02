import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  top: 30,
                  child: Container(
                    child: Blob.fromID(
                      id: ['5-5-38994'],
                      size: 200,
                      styles: BlobStyles(
                        strokeWidth: 1,
                        fillType: BlobFillType.stroke,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Container(
                    child: Blob.fromID(
                      id: ['6-4-38994'],
                      size: 200,
                      styles: BlobStyles(
                        strokeWidth: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text("Welcome to",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 10,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  "Specto V's App where imagination meets reality and innovation is imminent",
                  style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.normal))),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 60.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    )),
              ),
              onPressed: () {},
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
