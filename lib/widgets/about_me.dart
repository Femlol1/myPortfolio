import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Hello, I\'m Osifemi (Femi) Osibemekun, a final-year software engineering student at the University of Leicester. I am passionate about mobile application development and creating user-friendly applications that enhance people\'s daily routines. With a focus on practicality and efficiency, I strive to deliver enjoyable experiences through my applications.',
          ),
          SizedBox(height: 16.0),
          Text(
            'Education',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'University of Leicester (2020 - 2023)\nBSc Software Engineering. Predicted 2:1\nModules include object-oriented programming, Mobile applications and AI.',
          ),
          // Add more sections for employment, skills, and other details as desired
        ],
      ),
    );
  }
}
