// import 'package:flutter/material.dart';
// import 'package:webpage/responsive/desktop_body.dart';
// import 'package:webpage/responsive/mobile_body.dart';
// import 'package:webpage/responsive/responsive_layout.dart';
// import 'package:webpage/responsive/tablet_body.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Osifemi Osibemekun',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.green),
//       home: ResponsiveLayout(
//         mobileBody: const MobileScaffold(),
//         tabletBody: const TabletScaffold(),
//         desktopBody: const DesktopScaffold(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:webpage/transitions/container_transition.dart';
import 'package:webpage/widgets/about_me.dart';
import 'package:webpage/config/animations.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PortfolioHomePage(),
    );
  }
}

const String _aboutMeParagraph =
    '''Hello, I'm Osifemi (Femi) Osibemekun, a final-year software engineering student at the University of Leicester. I am passionate about mobile application development and creating user-friendly applications that enhance people's daily routines. With a focus on practicality and efficiency, I strive to deliver enjoyable experiences through my applications.

Education has played a crucial role in shaping my skills. Pursuing a BSc in Software Engineering with an industrial year, I have gained a strong foundation in object-oriented programming, mobile applications, and AI. My final-year project involved developing a currency recognition mobile application, showcasing my ability to tackle real-world challenges.

Throughout my academic journey, I have acquired proficiency in various programming languages such as Java, SQL, Python, JavaScript, PHP, and Dart. I am well-versed in development tools like Node.js, Eclipse, and GitHub, and I am experienced in working with operating systems such as Android, iOS, Windows, and Linux.

In addition to my studies, I have gained practical experience through several employment opportunities. As a software analyst at Geta GetaDesk, I analyzed and improved a web platform built with Laravel, enhancing its functionality and user experience. Working as a warehouse demonstrator, I developed adaptability skills while interacting with customers and demonstrating a wide range of products.

During my time as a lead peer mentor at the University of Leicester, I provided valuable support to fellow students, adapting my communication style to foster a professional yet approachable environment. My role as a charity shop assistant at Saint Francis Hospice Harold Hill Store strengthened my customer service skills and attention to detail.

I have also had the privilege of participating in programs at renowned organizations. Through the IBM Ignite scheme, I completed badges and honed my presentation, communication, and problem-solving abilities. During a work placement at Transport for London's IT department, I contributed to website creation, virtual reality application development, and software testing.

Beyond my professional endeavors, I have a passion for sports and hobbies. I have been an active member of the University of Leicester American football team and enjoy roller skating and table tennis in my free time.

With a predicted 2:1 in my BSc Software Engineering degree, a diverse skill set, and a drive for mobile application development, I am eager to embark on a rewarding career in the field. References are available upon request.

Thank you for taking the time to learn more about me. I look forward to connecting with you and exploring opportunities in the world of mobile application development.''';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('About Me'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OpenContainerTransformDemo()),
                );
                // Navigate to about me section
              },
            ),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransitionsHomePage()),
                );
                // Navigate to skills section
              },
            ),
            ListTile(
              title: const Text('Projects'),
              onTap: () {
                // Navigate to projects section
              },
            ),
            ListTile(
              title: const Text('Employment'),
              onTap: () {
                // Navigate to employment section
              },
            ),
            ListTile(
              title: const Text('Sports and Interests'),
              onTap: () {
                // Navigate to sports and interests section
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
            ),
            const Text(
              'Osifemi (Femi) Osibemekun',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Hello, I\'m Osifemi (Femi) Osibemekun, a final-year software engineering student at the University of Leicester. I am passionate about mobile application development and creating user-friendly applications that enhance people\'s daily routines. With a focus on practicality and efficiency, I strive to deliver enjoyable experiences through my applications.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Skills',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Java')),
                Chip(label: Text('SQL')),
                Chip(label: Text('Python')),
                Chip(label: Text('JavaScript')),
                Chip(label: Text('PHP')),
                Chip(label: Text('Dart')),
              ],
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('Project Title'),
                  subtitle: const Text('Project description'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Navigate to the project details page
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Employment',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text('Geta GetaDesk - Software Analyst'),
              subtitle: const Text('July 2022 - August 2022'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            ListTile(
              title: const Text('Warehouse Demonstrator Service'),
              subtitle: const Text('2021 - 2022'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            ListTile(
              title:
                  const Text('The University of Leicester - Lead Peer Mentor'),
              subtitle: const Text('2021 - 2022'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            ListTile(
              title: const Text(
                  'Saint Francis Hospice Harold Hill Store - Charity Shop Assistant'),
              subtitle: const Text('2019 - 2020'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            ListTile(
              title: const Text(
                  'International Business Machines – IBM Ignite Scheme'),
              subtitle: const Text('October 2019 - September 2019'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            ListTile(
              title: const Text(
                  'Transport for London - TFL (IT Department) Work Placement'),
              subtitle: const Text('April 2018 - May 2018'),
              onTap: () {
                // Navigate to employment details page
              },
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sports and Interests',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(
                    label:
                        Text('University of Leicester American Football Team')),
                Chip(label: Text('Roller Skating')),
                Chip(label: Text('Table Tennis')),
                Chip(label: Text('Climbing')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioSectionPage extends StatelessWidget {
  final String section;

  const PortfolioSectionPage({required this.section, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(section),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add your content for each section here
            if (section == 'About Me') ...[
              const Text('About Me Section'),
              // Add about me content
            ],
            if (section == 'Skills') ...[
              const Text('Skills Section'),
              // Add skills content
            ],
            if (section == 'Projects') ...[
              const Text('Projects Section'),
              // Add projects content
            ],
            if (section == 'Employment') ...[
              const Text('Employment Section'),
              // Add employment content
            ],
            if (section == 'Sports and Interests') ...[
              const Text('Sports and Interests Section'),
              // Add sports and interests content
            ],
          ],
        ),
      ),
    );
  }
}
