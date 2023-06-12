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
import 'package:webpage/widgets/about_me.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              itemCount: 1, // Replace with the actual number of projects
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('Currency Recognition Mobile App'),
                  subtitle: const Text(
                      'Final-year project at the University of Leicester'),
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
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(
                    label:
                        Text('University of Leicester American Football Team')),
                Chip(label: Text('Roller Skating')),
                Chip(label: Text('Table Tennis')),
                Chip(label: Text('Obstical courses '))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
