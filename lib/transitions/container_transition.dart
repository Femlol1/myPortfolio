import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

const String _loremIpsumParagraph =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
    'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
    'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
    'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
    'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
    'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
    'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
    'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
    'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
    'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
    'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
    'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
    'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
    'vitae.\n'
    '\n'
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
    'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
    'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
    'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
    'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
    'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
    'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
    'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
    'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
    'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
    'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
    'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
    'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
    'vitae';

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

const double _fabDimension = 56.0;

/// The demo page for [OpenContainerTransform].
class OpenContainerTransformDemo extends StatefulWidget {
  /// Creates the demo page for [OpenContainerTransform].
  const OpenContainerTransformDemo({super.key});

  @override
  State<OpenContainerTransformDemo> createState() {
    return _OpenContainerTransformDemoState();
  }
}

class _OpenContainerTransformDemoState
    extends State<OpenContainerTransformDemo> {
  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  void _showMarkedAsDoneSnackbar(bool? isMarkedAsDone) {
    if (isMarkedAsDone ?? false) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Marked as done!'),
      ));
    }
  }

  void _showSettingsBottomModalSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
            return Container(
              height: 125,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fade mode',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 12),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(2.0),
                    selectedBorderColor: Theme.of(context).colorScheme.primary,
                    onPressed: (int index) {
                      setModalState(() {
                        setState(() {
                          _transitionType = index == 0
                              ? ContainerTransitionType.fade
                              : ContainerTransitionType.fadeThrough;
                        });
                      });
                    },
                    isSelected: <bool>[
                      _transitionType == ContainerTransitionType.fade,
                      _transitionType == ContainerTransitionType.fadeThrough,
                    ],
                    children: const <Widget>[
                      Text('FADE'),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('FADE THROUGH'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container transform'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              _showSettingsBottomModalSheet(context);
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          // _OpenContainerWrapper(
          //   transitionType: _transitionType,
          //   closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //     return _ExampleCard(openContainer: openContainer);
          //   },
          //   onClosed: _showMarkedAsDoneSnackbar,
          // ),
          const SizedBox(height: 16.0),
          _OpenContainerWrapper(
            transitionType: _transitionType,
            closedBuilder: (BuildContext _, VoidCallback openContainer) {
              return _ExampleSingleTile(openContainer: openContainer);
            },
            onClosed: _showMarkedAsDoneSnackbar,
          ),
          // const SizedBox(height: 16.0),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: _OpenContainerWrapper(
          //         transitionType: _transitionType,
          //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //           return _SmallerCard(
          //             openContainer: openContainer,
          //             subtitle: 'Secondary text',
          //           );
          //         },
          //         onClosed: _showMarkedAsDoneSnackbar,
          //       ),
          //     ),
          //     const SizedBox(width: 8.0),
          //     Expanded(
          //       child: _OpenContainerWrapper(
          //         transitionType: _transitionType,
          //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //           return _SmallerCard(
          //             openContainer: openContainer,
          //             subtitle: 'Secondary text',
          //           );
          //         },
          //         onClosed: _showMarkedAsDoneSnackbar,
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 16.0),
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: _OpenContainerWrapper(
          //         transitionType: _transitionType,
          //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //           return _SmallerCard(
          //             openContainer: openContainer,
          //             subtitle: 'Secondary',
          //           );
          //         },
          //         onClosed: _showMarkedAsDoneSnackbar,
          //       ),
          //     ),
          //     const SizedBox(width: 8.0),
          //     Expanded(
          //       child: _OpenContainerWrapper(
          //         transitionType: _transitionType,
          //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //           return _SmallerCard(
          //             openContainer: openContainer,
          //             subtitle: 'Secondary',
          //           );
          //         },
          //         onClosed: _showMarkedAsDoneSnackbar,
          //       ),
          //     ),
          //     const SizedBox(width: 8.0),
          //     Expanded(
          //       child: _OpenContainerWrapper(
          //         transitionType: _transitionType,
          //         closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //           return _SmallerCard(
          //             openContainer: openContainer,
          //             subtitle: 'Secondary',
          //           );
          //         },
          //         onClosed: _showMarkedAsDoneSnackbar,
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 16.0),
          // ...List<Widget>.generate(10, (int index) {
          //   return OpenContainer<bool>(
          //     transitionType: _transitionType,
          //     openBuilder: (BuildContext _, VoidCallback openContainer) {
          //       return const _DetailsPage();
          //     },
          //     onClosed: _showMarkedAsDoneSnackbar,
          //     tappable: false,
          //     closedShape: const RoundedRectangleBorder(),
          //     closedElevation: 0.0,
          //     closedBuilder: (BuildContext _, VoidCallback openContainer) {
          //       return ListTile(
          //         leading: Image.asset(
          //           'assets/avatar_logo.png',
          //           width: 40,
          //         ),
          //         onTap: openContainer,
          //         title: Text('List item ${index + 1}'),
          //         subtitle: const Text('Secondary text'),
          //       );
          //     },
          //   );
          // }),
        ],
      ),
      floatingActionButton: OpenContainer(
        transitionType: _transitionType,
        openBuilder: (BuildContext context, VoidCallback _) {
          return const _DetailsPage(
            includeMarkAsDoneButton: false,
          );
        },
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(_fabDimension / 2),
          ),
        ),
        closedColor: Theme.of(context).colorScheme.secondary,
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return SizedBox(
            height: _fabDimension,
            width: _fabDimension,
            child: Center(
              child: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    required this.closedBuilder,
    required this.transitionType,
    required this.onClosed,
  });

  final CloseContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool?> onClosed;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return const _DetailsPage();
      },
      onClosed: onClosed,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}

class _ExampleCard extends StatelessWidget {
  const _ExampleCard({required this.openContainer});

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    return _InkWellOverlay(
      openContainer: openContainer,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.black38,
              child: Center(
                child: Image.asset(
                  'assets/placeholder_image.png',
                  width: 100,
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text('Title'),
            subtitle: Text('Secondary text'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur '
              'adipiscing elit, sed do eiusmod tempor.',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

class _SmallerCard extends StatelessWidget {
  const _SmallerCard({
    required this.openContainer,
    required this.subtitle,
  });

  final VoidCallback openContainer;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return _InkWellOverlay(
      openContainer: openContainer,
      height: 225,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: 150,
            child: Center(
              child: Image.asset(
                'assets/placeholder_image.png',
                width: 80,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExampleSingleTile extends StatelessWidget {
  const _ExampleSingleTile({required this.openContainer});

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    const double height = 100.0;

    return _InkWellOverlay(
      openContainer: openContainer,
      height: height,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: height,
            width: height,
            child: Center(
              child: Image.asset(
                'assets/placeholder_image.png',
                width: 60,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur '
                      'adipiscing elit,',
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InkWellOverlay extends StatelessWidget {
  const _InkWellOverlay({
    this.openContainer,
    this.height,
    this.child,
  });

  final VoidCallback? openContainer;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: InkWell(
        onTap: openContainer,
        child: child,
      ),
    );
  }
}

class _DetailsPage extends StatelessWidget {
  const _DetailsPage({this.includeMarkAsDoneButton = true});

  final bool includeMarkAsDoneButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details page'),
        actions: <Widget>[
          if (includeMarkAsDoneButton)
            IconButton(
              icon: const Icon(Icons.done),
              onPressed: () => Navigator.pop(context, true),
              tooltip: 'Mark as done',
            )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset(
                'assets/placeholder_image.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black54,
                        fontSize: 30.0,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  _aboutMeParagraph,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black54,
                        height: 1.5,
                        fontSize: 16.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
