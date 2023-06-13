import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;
  late Animation<double> _apea;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 10000),
    );

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
            ),
            const SizedBox(height: 16),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const Text(
                'Osifemi (Femi) Osibemekun',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const Text(
                'Final-year Software Engineering student',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const Text(
                'Hello, I\'m Osifemi (Femi) Osibemekun, a final-year software engineering student at the University of Leicester. I am passionate about mobile application development and creating user-friendly applications that enhance people\'s daily routines. With a focus on practicality and efficiency, I strive to deliver enjoyable experiences through my applications.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 24),
            FadeTransition(
              opacity: _fadeInAnimation,
              child: const Text(
                'Education',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'University of Leicester (2020 - 2023)\nBSc Software Engineering with an industrial year\n\nHavering Sixth form college (2017- 2019)\nBTEC Level 3 ICT\n\nAvicenna-International School(2015 - 2017)\n8 GCSEs, grades A-C, including Maths, English and ICT',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'IT Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Development Tools: Node.js, Eclipse, GitHub\n\nProgramming Languages: Java, SQL, Python, JavaScript, PHP, Dart\n\nOperating systems: Android, iOS, Windows and Linux',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Employment',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Geta GetaDesk - Software Analyst (July 2022 - August 2022)\nAnalysis of the current web platform (built using Laravel framework and the identification of improvements and best practices.\n\nWarehouse Demonstrator Service (2021 - 2022)\nDemonstrating different products on a daily basis, ranging from electronics to food.\n\nThe University of Leicester - Lead Peer Mentor (2021 - 2022)\nSupporting mentees and representing the university\'s peer mentoring scheme.\n\nSaint Francis Hospice Harold Hill Store - Charity Shop Assistant (2019 - 2020)\nFace-to-face customer service and product management.\n\nInternational Business Machines – IBM Ignite scheme, Southbank London (October 2019 - September 2019)\nCompleted 3 IBM badges and gained practical skills in communication and problem-solving.\n\nTransport for London - TFL (IT department) work placement, Stratford London (April 2018 - May 2018)\nDeveloped websites, virtual reality applications, and tested software.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Sports and Interests',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'University of Leicester American football team\n\nRoller skating\n\nTable tennis',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
